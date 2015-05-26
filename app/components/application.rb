class Application <Netzke::Basepack::Viewport

  component :pm_product_rent_item_persistence
  component :about_window

  class User < Struct.new(:email, :password)
    def initialize
      self.email = "1034009199@qq.com"
      self.password = "1034009199"
    end
    def self.authenticate_with?(email, password)
      instance = self.new
      [email, password] == [instance.email, instance.password]
    end
  end

  #
  #Actions
  #
  action :about do |c|
    c.icon = :information
  end

  action :sign_in do |c|
    c.icon = :door_in
  end

  action :sign_out do |c|
    c.icon = :door_out
    c.text = "退出 #{current_user.email}" if current_user
  end

  #
  #Endpoints
  #
  endpoint :sign_in do |params,this|
    user = User.new
    if User.authenticate_with?(params[:email], params[:password])
      session[:user_id] = 1 # anything; this is what you'd normally do in a real-life case
      this.netzke_set_result(true)
    else
      this.netzke_set_result(false)
      this.netzke_feedback("密码或者邮件箱错误！")
    end
  end

  endpoint :sign_out do |params,this|
    session[:user_id] = nil
    this.netzke_set_result(true)
  end




  #
  #Public def
  #
  def configure(c)
    super
    c.items = [{
                   layout: :border,
                   tbar: [header_html, '->', :about, current_user ? :sign_out : :sign_in],
                   height: 780,
                   items: [
                           {
                               region: :south,
                               split: true,
                               height: 2
                           },
                           {
                               region: :east,
                               split: true,
                               width: 1
                           },
                           {
                               region: :west,
                               item_id: :navigation,
                               collapsible: true,
                               width: 180,
                               split: true,
                               xtype: :treepanel,
                               root: menu,
                               root_visible: false,
                               frame: true,
                               title: '产品管理系统'
                           },
                           {
                               region: :center,
                               layout: :fit,
                               items: [{
                                           item_id: :main_panel,
                                           xtype: 'panel',
                                           region: :center,
                                           layout: :fit,
                                           items: [{
                                                       layout: 'center',
                                                       width: 500,
                                                       height: 400,
                                                       defaults: {
                                                           bodyPadding: 15,
                                                           width: 300,
                                                           height: 200,
                                                           frame: true
                                                       },
                                                       items: [{
                                                                   xtype: 'datepicker',
                                                                   bodyPadding: 15
                                                               }]
                                                   }]
                                       }]
                           }]
               }]
  end



  #
  #JS
  #
  js_configure do |c|
    c.layout = :fit
    #回调父类
    c.init_component = <<-JS
    function() {
    this.callParent();
    this.navigation = this.down('panel[itemId="navigation"]');
    this.mainPanel = this.down('panel[itemId="main_panel"]');
    this.navigation.on('select',
    function(m, r) {
        this.netzkeLoadComponent(r.raw.cmp, {
            container: this.mainPanel,
            callback: function(cmp) {
                if (cmp.isFloating()) {
                    cmp.show();
                }
            },
            scope: this
        });
    },
    this);
}
    JS
    #关于
    c.on_About  = <<-JS
    function() {
    this.netzkeLoadComponent("about_window", {
        callback: function(cmp) {
            if (cmp.isFloating()) {
                cmp.show();
            }
        },
        scope: this
    });
}
    JS
    #登录
    c.on_sign_in  = <<-JS
    function() {
    var me = this;
    this.signinWin = this.signinWin || Ext.create('widget.window', {
        width: 300,
        height: 200,
        modal: true,
        layout: 'fit',
        closeAction: 'hide',
        title: "登录",
        fbar: [{
            text: '确定',
            handler: function() {
                var form = this.up('window').items.first(),
                values = form.getForm().getValues();
                me.signIn(values,
                function(res) {
                    if (res) {
                        this.signinWin.close();
                        Ext.Msg.show({
                            title: "登录",
                            msg: "登录成功, 正重新加载数据，请稍候.....",
                            icon: Ext.Msg.INFO,
                            closable: false
                        });
                        window.location = window.location;
                    }
                });
            }
        },
        {
            text: '取消',
            handler: function() {
                this.up('window').close();
            }
        }],
        items: {
            xtype: 'form',
            bodyPadding: 10,
            defaultType: 'textfield',
            items: [{
                xtype: 'displayfield'
            },
            {
                fieldLabel: '邮箱',
                name: 'email',
                value: '1034009199@qq.com'
            },
            {
                fieldLabel: '密码',
                name: 'password',
                inputType: 'password',
                value: '1034009199'
            }]
        }
    });
    this.signinWin.show();
}

    JS
    #退出
    c.on_sign_out  = <<-JS
    function() {
    this.signOut(null,
    function(success) {
        if (success) {
            Ext.Msg.show({
                title: "退出",
                msg: "退出, 正在加载数据，请稍候....",
                icon: Ext.Msg.INFO,
                closable: false
            });
            window.location = window.location;
        }
    })
}

    JS
  end

  #
  #Protected def
  #
  protected

  def current_user
    @current_user ||= session[:user_id] && User.new
  end

  def leaf(text, component, icon = nil)
    { text: text,
      icon: icon && uri_to_icon(icon),
      cmp: component,
      leaf: true
    }
  end

  def menu
    out = { :text => '产品管理',
            :expanded => true,
            :children => [
                { :text => '产品配置',
                  :expanded => true,
                  :children => [

                      { :text => '帐务配置',
                        :expanded => true,
                        :children => [
                            leaf('固话配置', :pm_product_rent_item_persistence, :user_suit),
                            leaf('优惠配置', :pm_product_rent_item_persistence, :user_suit),
                            leaf('保底配置', :pm_product_rent_item_persistence, :user),
                            leaf('信控配置', :pm_product_rent_item_persistence, :user),
                            leaf('预算配置', :pm_product_rent_item_persistence, :user_suit)
                        ]
                      },
                      { :text => '计费配置',
                        :expanded => true,
                        :children => [
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                            leaf('待定', :pm_product_rent_item_persistence, :user),
                            leaf('待定', :pm_product_rent_item_persistence, :user),
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit)
                        ]
                      },

                      { text: '营业配置',
                        expanded: true,
                        children: [
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                            leaf('待定', :pm_product_rent_item_persistence, :user_suit)
                        ]
                      }
                  ]
                },

                { :text => '维护事务',
                  :expanded => true,
                  :children => [
                      leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                      leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                      leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                      leaf('待定', :pm_product_rent_item_persistence, :user_suit),
                      leaf('待定', :pm_product_rent_item_persistence, :user_suit)
                  ]
                }
            ]
    }
    out
  end

  def header_html
    '
      <div style="font-size: 150%;">
         产品管理系统 (Netzke 0.12, Rails 4.2, Ext JS 5.1)
      </div>
    '
  end

end