<%@ page contentType="text/html; charset=euc-jp" %>
<%
// 入力された情報を出力する

// パラメータを取得
String name = request.getParameter("name");
String mailadr = request.getParameter("mailadr");

// 文字コードの変換を行う
name = new String(name.getBytes("8859_1"), "EUC_JP");
mailadr = new String(mailadr.getBytes("8859_1"), "EUC_JP");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>入力された情報を出力する</title></head>
<body>
<p>-- 入力された情報を出力する --</p>
<p><ul>
<li>名前: <%= name %>
<li>メールアドレス: <%= mailadr %>
</ul></p>
</body>
</html>