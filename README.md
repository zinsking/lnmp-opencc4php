# lnmp-opencc4php
lnmp环境增加opencc4php实现PHP简繁体转换，opencc4php 是 OpenCC 的PHP扩展，能很智能的完成简繁体转换。
<br>
<li>支持 PHP 版本： 7.X</li>
<li>测试环境：Debian 9 64位</li>
<br>
<b>安装：</b>
<br>
<pre>
wget https://raw.githubusercontent.com/zinsking/lnmp-opencc4php/master/lnmp-opencc4php.sh
bash lnmp-opencc4php.sh
</pre>
<br>
<br>
<b>示例：</b>
<br>
<pre>
$od = opencc_open("s2twp.json"); //传入配置文件名
$text = opencc_convert("我鼠标哪儿去了。", $od);
echo $text;
opencc_close($od);
</pre>
<br>
输出: <code>我滑鼠哪兒去了</code>
<br>
<br>
<b>函数列表：</b>
<br>
<code>opencc_open(string ConfigName)</code> ConfigName:配置文件名，成功返回资源对象，失败返回false<br>
<code>opencc_close(resource ob)</code> 关闭资源对象,成功返回true，失败返回false.<br>
<code>opencc_error()</code> 返回最后一条错误信息，有错误信息返回String,无错误返回false<br>
<code>opencc_convert(string str, resource od)</code> str：要转换的字符串(UTF-8)，od：opencc资源对象
<br>
<br>
<b>可用配置：</b>
<br>
<li>s2t.json 简体到繁体</li>
<li>t2s.json 繁体到简体</li>
<li>s2tw.json 简体到台湾正体</li>
<li>tw2s.json 台湾正体到简体</li>
<li>s2hk.json 简体到香港繁体（香港小学学习字词表标准）</li>
<li>hk2s.json 香港繁体（香港小学学习字词表标准）到简体</li>
<li>s2twp.json 简体到繁体（台湾正体标准）并转换为台湾常用词汇</li>
<li>tw2sp.json 繁体（台湾正体标准）到简体并转换为中国大陆常用词汇</li>
<br>
<br>
<b>参考链接：</b>
<li>https://github.com/nauxliu/opencc4php</li>
<li>https://github.com/BYVoid/OpenCC</li>
