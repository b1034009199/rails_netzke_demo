class AboutWindow  <Netzke::Basepack::Window


  def configure(c)
    super
    c.width = 800
    c.height = 400
    c.title= '关于产品管理系统'
    c.items=[
        xtype: 'panel',
        overflowY: 'auto',
        html: header_html
    ]
  end




  def header_html
    '
    <span><span style="line-height:24px;"><span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">《眉间雪》</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">作曲：生命树</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">作词：陆菱纱</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">唱：晴愔</span><br />
    <span style="color:#EE33EE;"></span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;"><span style="color:#EE33EE;">是不是 </span><span style="color:#EE33EE;">每种感情都不容沉溺放肆</span></span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">交心淡如君子</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;"><span style="font-size:14px;color:#EE33EE;">只道是 那些无关风花雪月的相</span><span style="font-size:14px;color:#EE33EE;">思</span></span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">说来几人能知</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#337FE5;"><span style="color:#EE33EE;">院内冬初昔年与你栽的桃树</span><span style="font-family:SimSun;color:#EE33EE;"></span></span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">叶落早做尘土</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">新雪来时 又将陈酒埋了几壶</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">盼你归来后对酌</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">穿过落雁修竹 看过月升日暮</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">你说有一日总会名扬天下实现你抱负</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">那时低头替你剑穗缠着新流苏</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">心愿未听清楚</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">还挂着流苏 是否应该满足</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">也为你缝好冬衣寄去书信一两句叮嘱</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">该庆幸至远至疏你我还未至陌路</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">是时光从来残酷</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">最害怕 酒肆闲谈时候听见你名字</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">语气七分熟识</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">回过神 笑问何方大侠姓名竟不知</span><br />
    <span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">笑容有多讽刺</span><br />
    <span style="font-size:14px;"></span><br />
    <br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">斟酒独酌 细雪纷纷覆上眉目</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">清寒已然入骨</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">还忆最初 有你扯过衣袖轻拂</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">笑说雪融似泪珠</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">曾经相伴相护 说着初心不负</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">想起某一日陪你策马同游闹市中漫步</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">那时正逢扬州三月桃花铺满路</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">神情难免恍惚</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">江湖的尽头是否只剩孤独</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">都怪我玲珑心思执念太过以尘网自缚</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">前方太辽阔若问此去应去向何处</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">把来路当做归途</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">桃树下 那年落雪为你唱一段乐府</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">信了人不如故</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">只如今茫茫大雪之中等着谁回顾</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">明知无人回顾</span><br />
<span style="font-family:verdana, Arial, Helvetica, sans-serif;line-height:22px;background-color:#FFFEDE;font-size:14px;color:#EE33EE;">谁能初心不负</span><br />
<br />
    </span></span>
  '
  end

end