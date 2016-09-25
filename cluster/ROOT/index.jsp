<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <p>Instance <%=InetAddress.getLocalHost()%> </p>
        <ul>
            <li>Session Id : <%=request.getSession().getId()%></li>
            <li>Is it New Session : <%=request.getSession().isNew()%></li>
            <li>Session Creation Date : <%=new Date(request.getSession().getCreationTime())%></li>
            <li>Session Access Date : <%=new Date(request.getSession().getLastAccessedTime())%></li>
        </ul>
        <hr/>
        <p>Session Attributes; use this to demonstrate tomcat session clustering; note which Tomcat host (above) serves you</p>
        <ul>
        <%
                String attributeName = request.getParameter("attributeName");
                List<String> listOfAttributes = (List<String>) request.getSession().getAttribute("Attributes");
                if (listOfAttributes == null) {
                    listOfAttributes = new ArrayList<String>();
                    request.getSession().setAttribute("Attributes", listOfAttributes);
                }
                if (attributeName != null) {
                    listOfAttributes.add(attributeName);
 		             request.getSession().setAttribute("Attributes", listOfAttributes);
                }
                for (String attribute : listOfAttributes) {
                    out.println("<li>"+attribute + "</li><br/>");
                }
        %>
        </ul>
        <form action="index.jsp" method="post">
            Attribute Name <input type="text" name="attributeName" />
            <input type="submit" value="Add to Session Attributes"/>
        </form>
        <hr/>
        <p>Credits:</p>
        <ul>
            <li>Ramki for his <a href="http://www.ramkitech.com/2015/10/docker-tomcat-clustering.html">Blog</a> demonstrating Tomcat clustering</li>
            <li>Dylan Wang for his NGINX build with HTTP/2 enabled: <a href="https://hub.docker.com/r/ehekatl/docker-nginx-http2/">ehekatl/docker-nginx-http2</a>.  Note that the standard build of NGINX does not enable HTTP/2 by default</li>
            <li>Evan Brown for demontrating how to enable HTTPS <a href="https://github.com/ployst/docker-nginx-ssl-proxy">ployst/docker-nginx-ssl-proxy</a> - including instructions on <a href="https://github.com/ployst/docker-nginx-ssl-proxy#generating-test-certificates">refreshing certificates</a></li>
            <li>GoSquared for the flag images <a href="https://www.gosquared.com/resources/flag-icons/">https://www.gosquared.com/resources/flag-icons/</a></li>
        </ul>

        <p>Some images to illustrate HTTP/2 calls.  You might want to  
            <a href="https://developers.google.com/web/tools/chrome-devtools/profile/network-performance/network-conditions?hl=en">throttle the bandwidth using the native Chrome tool</a>.
        Compare HTTPS, which uses HTTP/2, to the same over HTTP which uses HTTP/1.1</p>
        <ul id="flags">
            <li>AD:&nbsp;<img src="AD.png" width="64" height="64"/></li>
            <li>AE:&nbsp;<img src="AE.png" width="64" height="64"/></li>
            <li>AF:&nbsp;<img src="AF.png" width="64" height="64"/></li>
            <li>AG:&nbsp;<img src="AG.png" width="64" height="64"/></li>
            <li>AI:&nbsp;<img src="AI.png" width="64" height="64"/></li>
            <li>AL:&nbsp;<img src="AL.png" width="64" height="64"/></li>
            <li>AM:&nbsp;<img src="AM.png" width="64" height="64"/></li>
            <li>AN:&nbsp;<img src="AN.png" width="64" height="64"/></li>
            <li>AO:&nbsp;<img src="AO.png" width="64" height="64"/></li>
            <li>AQ:&nbsp;<img src="AQ.png" width="64" height="64"/></li>
            <li>AR:&nbsp;<img src="AR.png" width="64" height="64"/></li>
            <li>AS:&nbsp;<img src="AS.png" width="64" height="64"/></li>
            <li>AT:&nbsp;<img src="AT.png" width="64" height="64"/></li>
            <li>AU:&nbsp;<img src="AU.png" width="64" height="64"/></li>
            <li>AW:&nbsp;<img src="AW.png" width="64" height="64"/></li>
            <li>AX:&nbsp;<img src="AX.png" width="64" height="64"/></li>
            <li>AZ:&nbsp;<img src="AZ.png" width="64" height="64"/></li>
            <li>BA:&nbsp;<img src="BA.png" width="64" height="64"/></li>
            <li>BB:&nbsp;<img src="BB.png" width="64" height="64"/></li>
            <li>BD:&nbsp;<img src="BD.png" width="64" height="64"/></li>
            <li>BE:&nbsp;<img src="BE.png" width="64" height="64"/></li>
            <li>BF:&nbsp;<img src="BF.png" width="64" height="64"/></li>
            <li>BG:&nbsp;<img src="BG.png" width="64" height="64"/></li>
            <li>BH:&nbsp;<img src="BH.png" width="64" height="64"/></li>
            <li>BI:&nbsp;<img src="BI.png" width="64" height="64"/></li>
            <li>BJ:&nbsp;<img src="BJ.png" width="64" height="64"/></li>
            <li>BL:&nbsp;<img src="BL.png" width="64" height="64"/></li>
            <li>BM:&nbsp;<img src="BM.png" width="64" height="64"/></li>
            <li>BN:&nbsp;<img src="BN.png" width="64" height="64"/></li>
            <li>BO:&nbsp;<img src="BO.png" width="64" height="64"/></li>
            <li>BR:&nbsp;<img src="BR.png" width="64" height="64"/></li>
            <li>BS:&nbsp;<img src="BS.png" width="64" height="64"/></li>
            <li>BT:&nbsp;<img src="BT.png" width="64" height="64"/></li>
            <li>BW:&nbsp;<img src="BW.png" width="64" height="64"/></li>
            <li>BY:&nbsp;<img src="BY.png" width="64" height="64"/></li>
            <li>BZ:&nbsp;<img src="BZ.png" width="64" height="64"/></li>
            <li>CA:&nbsp;<img src="CA.png" width="64" height="64"/></li>
            <li>CC:&nbsp;<img src="CC.png" width="64" height="64"/></li>
            <li>CD:&nbsp;<img src="CD.png" width="64" height="64"/></li>
            <li>CF:&nbsp;<img src="CF.png" width="64" height="64"/></li>
            <li>CG:&nbsp;<img src="CG.png" width="64" height="64"/></li>
            <li>CH:&nbsp;<img src="CH.png" width="64" height="64"/></li>
            <li>CI:&nbsp;<img src="CI.png" width="64" height="64"/></li>
            <li>CK:&nbsp;<img src="CK.png" width="64" height="64"/></li>
            <li>CL:&nbsp;<img src="CL.png" width="64" height="64"/></li>
            <li>CM:&nbsp;<img src="CM.png" width="64" height="64"/></li>
            <li>CN:&nbsp;<img src="CN.png" width="64" height="64"/></li>
            <li>CO:&nbsp;<img src="CO.png" width="64" height="64"/></li>
            <li>CR:&nbsp;<img src="CR.png" width="64" height="64"/></li>
            <li>CU:&nbsp;<img src="CU.png" width="64" height="64"/></li>
            <li>CV:&nbsp;<img src="CV.png" width="64" height="64"/></li>
            <li>CW:&nbsp;<img src="CW.png" width="64" height="64"/></li>
            <li>CX:&nbsp;<img src="CX.png" width="64" height="64"/></li>
            <li>CY:&nbsp;<img src="CY.png" width="64" height="64"/></li>
            <li>CZ:&nbsp;<img src="CZ.png" width="64" height="64"/></li>
            <li>DE:&nbsp;<img src="DE.png" width="64" height="64"/></li>
            <li>DJ:&nbsp;<img src="DJ.png" width="64" height="64"/></li>
            <li>DK:&nbsp;<img src="DK.png" width="64" height="64"/></li>
            <li>DM:&nbsp;<img src="DM.png" width="64" height="64"/></li>
            <li>DO:&nbsp;<img src="DO.png" width="64" height="64"/></li>
            <li>DZ:&nbsp;<img src="DZ.png" width="64" height="64"/></li>
            <li>EC:&nbsp;<img src="EC.png" width="64" height="64"/></li>
            <li>EE:&nbsp;<img src="EE.png" width="64" height="64"/></li>
            <li>EG:&nbsp;<img src="EG.png" width="64" height="64"/></li>
            <li>EH:&nbsp;<img src="EH.png" width="64" height="64"/></li>
            <li>ER:&nbsp;<img src="ER.png" width="64" height="64"/></li>
            <li>ES:&nbsp;<img src="ES.png" width="64" height="64"/></li>
            <li>ET:&nbsp;<img src="ET.png" width="64" height="64"/></li>
            <li>EU:&nbsp;<img src="EU.png" width="64" height="64"/></li>
            <li>FI:&nbsp;<img src="FI.png" width="64" height="64"/></li>
            <li>FJ:&nbsp;<img src="FJ.png" width="64" height="64"/></li>
            <li>FK:&nbsp;<img src="FK.png" width="64" height="64"/></li>
            <li>FM:&nbsp;<img src="FM.png" width="64" height="64"/></li>
            <li>FO:&nbsp;<img src="FO.png" width="64" height="64"/></li>
            <li>FR:&nbsp;<img src="FR.png" width="64" height="64"/></li>
            <li>GA:&nbsp;<img src="GA.png" width="64" height="64"/></li>
            <li>GB:&nbsp;<img src="GB.png" width="64" height="64"/></li>
            <li>GD:&nbsp;<img src="GD.png" width="64" height="64"/></li>
            <li>GE:&nbsp;<img src="GE.png" width="64" height="64"/></li>
            <li>GG:&nbsp;<img src="GG.png" width="64" height="64"/></li>
            <li>GH:&nbsp;<img src="GH.png" width="64" height="64"/></li>
            <li>GI:&nbsp;<img src="GI.png" width="64" height="64"/></li>
            <li>GL:&nbsp;<img src="GL.png" width="64" height="64"/></li>
            <li>GM:&nbsp;<img src="GM.png" width="64" height="64"/></li>
            <li>GN:&nbsp;<img src="GN.png" width="64" height="64"/></li>
            <li>GQ:&nbsp;<img src="GQ.png" width="64" height="64"/></li>
            <li>GR:&nbsp;<img src="GR.png" width="64" height="64"/></li>
            <li>GS:&nbsp;<img src="GS.png" width="64" height="64"/></li>
            <li>GT:&nbsp;<img src="GT.png" width="64" height="64"/></li>
            <li>GU:&nbsp;<img src="GU.png" width="64" height="64"/></li>
            <li>GW:&nbsp;<img src="GW.png" width="64" height="64"/></li>
            <li>GY:&nbsp;<img src="GY.png" width="64" height="64"/></li>
            <li>HK:&nbsp;<img src="HK.png" width="64" height="64"/></li>
            <li>HN:&nbsp;<img src="HN.png" width="64" height="64"/></li>
            <li>HR:&nbsp;<img src="HR.png" width="64" height="64"/></li>
            <li>HT:&nbsp;<img src="HT.png" width="64" height="64"/></li>
            <li>HU:&nbsp;<img src="HU.png" width="64" height="64"/></li>
            <li>IC:&nbsp;<img src="IC.png" width="64" height="64"/></li>
            <li>ID:&nbsp;<img src="ID.png" width="64" height="64"/></li>
            <li>IE:&nbsp;<img src="IE.png" width="64" height="64"/></li>
            <li>IL:&nbsp;<img src="IL.png" width="64" height="64"/></li>
            <li>IM:&nbsp;<img src="IM.png" width="64" height="64"/></li>
            <li>IN:&nbsp;<img src="IN.png" width="64" height="64"/></li>
            <li>IQ:&nbsp;<img src="IQ.png" width="64" height="64"/></li>
            <li>IR:&nbsp;<img src="IR.png" width="64" height="64"/></li>
            <li>IS:&nbsp;<img src="IS.png" width="64" height="64"/></li>
            <li>IT:&nbsp;<img src="IT.png" width="64" height="64"/></li>
            <li>JE:&nbsp;<img src="JE.png" width="64" height="64"/></li>
            <li>JM:&nbsp;<img src="JM.png" width="64" height="64"/></li>
            <li>JO:&nbsp;<img src="JO.png" width="64" height="64"/></li>
            <li>JP:&nbsp;<img src="JP.png" width="64" height="64"/></li>
            <li>KE:&nbsp;<img src="KE.png" width="64" height="64"/></li>
            <li>KG:&nbsp;<img src="KG.png" width="64" height="64"/></li>
            <li>KH:&nbsp;<img src="KH.png" width="64" height="64"/></li>
            <li>KI:&nbsp;<img src="KI.png" width="64" height="64"/></li>
            <li>KM:&nbsp;<img src="KM.png" width="64" height="64"/></li>
            <li>KN:&nbsp;<img src="KN.png" width="64" height="64"/></li>
            <li>KP:&nbsp;<img src="KP.png" width="64" height="64"/></li>
            <li>KR:&nbsp;<img src="KR.png" width="64" height="64"/></li>
            <li>KW:&nbsp;<img src="KW.png" width="64" height="64"/></li>
            <li>KY:&nbsp;<img src="KY.png" width="64" height="64"/></li>
            <li>KZ:&nbsp;<img src="KZ.png" width="64" height="64"/></li>
            <li>LA:&nbsp;<img src="LA.png" width="64" height="64"/></li>
            <li>LB:&nbsp;<img src="LB.png" width="64" height="64"/></li>
            <li>LC:&nbsp;<img src="LC.png" width="64" height="64"/></li>
            <li>LI:&nbsp;<img src="LI.png" width="64" height="64"/></li>
            <li>LK:&nbsp;<img src="LK.png" width="64" height="64"/></li>
            <li>LR:&nbsp;<img src="LR.png" width="64" height="64"/></li>
            <li>LS:&nbsp;<img src="LS.png" width="64" height="64"/></li>
            <li>LT:&nbsp;<img src="LT.png" width="64" height="64"/></li>
            <li>LU:&nbsp;<img src="LU.png" width="64" height="64"/></li>
            <li>LV:&nbsp;<img src="LV.png" width="64" height="64"/></li>
            <li>LY:&nbsp;<img src="LY.png" width="64" height="64"/></li>
            <li>MA:&nbsp;<img src="MA.png" width="64" height="64"/></li>
            <li>MC:&nbsp;<img src="MC.png" width="64" height="64"/></li>
            <li>MD:&nbsp;<img src="MD.png" width="64" height="64"/></li>
            <li>ME:&nbsp;<img src="ME.png" width="64" height="64"/></li>
            <li>MF:&nbsp;<img src="MF.png" width="64" height="64"/></li>
            <li>MG:&nbsp;<img src="MG.png" width="64" height="64"/></li>
            <li>MH:&nbsp;<img src="MH.png" width="64" height="64"/></li>
            <li>MK:&nbsp;<img src="MK.png" width="64" height="64"/></li>
            <li>ML:&nbsp;<img src="ML.png" width="64" height="64"/></li>
            <li>MM:&nbsp;<img src="MM.png" width="64" height="64"/></li>
            <li>MN:&nbsp;<img src="MN.png" width="64" height="64"/></li>
            <li>MO:&nbsp;<img src="MO.png" width="64" height="64"/></li>
            <li>MP:&nbsp;<img src="MP.png" width="64" height="64"/></li>
            <li>MQ:&nbsp;<img src="MQ.png" width="64" height="64"/></li>
            <li>MR:&nbsp;<img src="MR.png" width="64" height="64"/></li>
            <li>MS:&nbsp;<img src="MS.png" width="64" height="64"/></li>
            <li>MT:&nbsp;<img src="MT.png" width="64" height="64"/></li>
            <li>MU:&nbsp;<img src="MU.png" width="64" height="64"/></li>
            <li>MV:&nbsp;<img src="MV.png" width="64" height="64"/></li>
            <li>MW:&nbsp;<img src="MW.png" width="64" height="64"/></li>
            <li>MX:&nbsp;<img src="MX.png" width="64" height="64"/></li>
            <li>MY:&nbsp;<img src="MY.png" width="64" height="64"/></li>
            <li>MZ:&nbsp;<img src="MZ.png" width="64" height="64"/></li>
            <li>NA:&nbsp;<img src="NA.png" width="64" height="64"/></li>
            <li>NC:&nbsp;<img src="NC.png" width="64" height="64"/></li>
            <li>NE:&nbsp;<img src="NE.png" width="64" height="64"/></li>
            <li>NF:&nbsp;<img src="NF.png" width="64" height="64"/></li>
            <li>NG:&nbsp;<img src="NG.png" width="64" height="64"/></li>
            <li>NI:&nbsp;<img src="NI.png" width="64" height="64"/></li>
            <li>NL:&nbsp;<img src="NL.png" width="64" height="64"/></li>
            <li>NO:&nbsp;<img src="NO.png" width="64" height="64"/></li>
            <li>NP:&nbsp;<img src="NP.png" width="64" height="64"/></li>
            <li>NR:&nbsp;<img src="NR.png" width="64" height="64"/></li>
            <li>NU:&nbsp;<img src="NU.png" width="64" height="64"/></li>
            <li>NZ:&nbsp;<img src="NZ.png" width="64" height="64"/></li>
            <li>OM:&nbsp;<img src="OM.png" width="64" height="64"/></li>
            <li>PA:&nbsp;<img src="PA.png" width="64" height="64"/></li>
            <li>PE:&nbsp;<img src="PE.png" width="64" height="64"/></li>
            <li>PF:&nbsp;<img src="PF.png" width="64" height="64"/></li>
            <li>PG:&nbsp;<img src="PG.png" width="64" height="64"/></li>
            <li>PH:&nbsp;<img src="PH.png" width="64" height="64"/></li>
            <li>PK:&nbsp;<img src="PK.png" width="64" height="64"/></li>
            <li>PL:&nbsp;<img src="PL.png" width="64" height="64"/></li>
            <li>PN:&nbsp;<img src="PN.png" width="64" height="64"/></li>
            <li>PR:&nbsp;<img src="PR.png" width="64" height="64"/></li>
            <li>PS:&nbsp;<img src="PS.png" width="64" height="64"/></li>
            <li>PT:&nbsp;<img src="PT.png" width="64" height="64"/></li>
            <li>PW:&nbsp;<img src="PW.png" width="64" height="64"/></li>
            <li>PY:&nbsp;<img src="PY.png" width="64" height="64"/></li>
            <li>QA:&nbsp;<img src="QA.png" width="64" height="64"/></li>
            <li>RO:&nbsp;<img src="RO.png" width="64" height="64"/></li>
            <li>RS:&nbsp;<img src="RS.png" width="64" height="64"/></li>
            <li>RU:&nbsp;<img src="RU.png" width="64" height="64"/></li>
            <li>RW:&nbsp;<img src="RW.png" width="64" height="64"/></li>
            <li>SA:&nbsp;<img src="SA.png" width="64" height="64"/></li>
            <li>SB:&nbsp;<img src="SB.png" width="64" height="64"/></li>
            <li>SC:&nbsp;<img src="SC.png" width="64" height="64"/></li>
            <li>SD:&nbsp;<img src="SD.png" width="64" height="64"/></li>
            <li>SE:&nbsp;<img src="SE.png" width="64" height="64"/></li>
            <li>SG:&nbsp;<img src="SG.png" width="64" height="64"/></li>
            <li>SH:&nbsp;<img src="SH.png" width="64" height="64"/></li>
            <li>SI:&nbsp;<img src="SI.png" width="64" height="64"/></li>
            <li>SK:&nbsp;<img src="SK.png" width="64" height="64"/></li>
            <li>SL:&nbsp;<img src="SL.png" width="64" height="64"/></li>
            <li>SM:&nbsp;<img src="SM.png" width="64" height="64"/></li>
            <li>SN:&nbsp;<img src="SN.png" width="64" height="64"/></li>
            <li>SO:&nbsp;<img src="SO.png" width="64" height="64"/></li>
            <li>SR:&nbsp;<img src="SR.png" width="64" height="64"/></li>
            <li>SS:&nbsp;<img src="SS.png" width="64" height="64"/></li>
            <li>ST:&nbsp;<img src="ST.png" width="64" height="64"/></li>
            <li>SV:&nbsp;<img src="SV.png" width="64" height="64"/></li>
            <li>SY:&nbsp;<img src="SY.png" width="64" height="64"/></li>
            <li>SZ:&nbsp;<img src="SZ.png" width="64" height="64"/></li>
            <li>TC:&nbsp;<img src="TC.png" width="64" height="64"/></li>
            <li>TD:&nbsp;<img src="TD.png" width="64" height="64"/></li>
            <li>TF:&nbsp;<img src="TF.png" width="64" height="64"/></li>
            <li>TG:&nbsp;<img src="TG.png" width="64" height="64"/></li>
            <li>TH:&nbsp;<img src="TH.png" width="64" height="64"/></li>
            <li>TJ:&nbsp;<img src="TJ.png" width="64" height="64"/></li>
            <li>TK:&nbsp;<img src="TK.png" width="64" height="64"/></li>
            <li>TL:&nbsp;<img src="TL.png" width="64" height="64"/></li>
            <li>TM:&nbsp;<img src="TM.png" width="64" height="64"/></li>
            <li>TN:&nbsp;<img src="TN.png" width="64" height="64"/></li>
            <li>TO:&nbsp;<img src="TO.png" width="64" height="64"/></li>
            <li>TR:&nbsp;<img src="TR.png" width="64" height="64"/></li>
            <li>TT:&nbsp;<img src="TT.png" width="64" height="64"/></li>
            <li>TV:&nbsp;<img src="TV.png" width="64" height="64"/></li>
            <li>TW:&nbsp;<img src="TW.png" width="64" height="64"/></li>
            <li>TZ:&nbsp;<img src="TZ.png" width="64" height="64"/></li>
            <li>UA:&nbsp;<img src="UA.png" width="64" height="64"/></li>
            <li>UG:&nbsp;<img src="UG.png" width="64" height="64"/></li>
            <li>US:&nbsp;<img src="US.png" width="64" height="64"/></li>
            <li>UY:&nbsp;<img src="UY.png" width="64" height="64"/></li>
            <li>UZ:&nbsp;<img src="UZ.png" width="64" height="64"/></li>
            <li>VA:&nbsp;<img src="VA.png" width="64" height="64"/></li>
            <li>VC:&nbsp;<img src="VC.png" width="64" height="64"/></li>
            <li>VE:&nbsp;<img src="VE.png" width="64" height="64"/></li>
            <li>VG:&nbsp;<img src="VG.png" width="64" height="64"/></li>
            <li>VI:&nbsp;<img src="VI.png" width="64" height="64"/></li>
            <li>VN:&nbsp;<img src="VN.png" width="64" height="64"/></li>
            <li>VU:&nbsp;<img src="VU.png" width="64" height="64"/></li>
            <li>WF:&nbsp;<img src="WF.png" width="64" height="64"/></li>
            <li>WS:&nbsp;<img src="WS.png" width="64" height="64"/></li>
            <li>YE:&nbsp;<img src="YE.png" width="64" height="64"/></li>
            <li>YT:&nbsp;<img src="YT.png" width="64" height="64"/></li>
            <li>ZA:&nbsp;<img src="ZA.png" width="64" height="64"/></li>
            <li>ZM:&nbsp;<img src="ZM.png" width="64" height="64"/></li>
            <li>ZW:&nbsp;<img src="ZW.png" width="64" height="64"/></li>
        </ul>


    </body>
</html>
