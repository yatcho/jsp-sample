<%@ page contentType="text/html; charset=euc-jp" %>
<%
// ���Ϥ��줿���������Ϥ���

// �ѥ��᡼��������
String name = request.getParameter("name");
String mailadr = request.getParameter("mailadr");

// ʸ�������ɤ��Ѵ����Ԥ�
name = new String(name.getBytes("8859_1"), "EUC_JP");
mailadr = new String(mailadr.getBytes("8859_1"), "EUC_JP");

//
  String filename  = "fileout.txt";
  String path = request.getRealPath("./");

  FileWriter fileno = new FileWriter(path + filename);
  fileno.write(name + "\n");
  fileno.write(email + "\n");
  fileno.close();

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>���Ϥ��줿���������Ϥ���</title></head>
<body>
<p>-- ���Ϥ��줿���������Ϥ��� --</p>
<p><ul>
<li>̾��: <%= name %>
<li>�᡼�륢�ɥ쥹: <%= mailadr %>
</ul></p>
</body>
</html>