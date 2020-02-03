<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
    <h1></h1>
    <h2>Why I have built this site</h2>
    <p>This site was built for the purpose of displaying my TSQL & Reporting Skills. It is a small 
        clone of a project I did for a client. I acted as DBA, SQL Developer, SSIS ETL Developer, and 
        SSRS Reporting Developer, Online Marketing Consultant for this company as it was a small business 
        To display these skills I needed a basic Front-End. No better Fornt-End than Visual Studio and ASP.net 
        with C#.
        <h2>What was used to create this site?</h2><br />
        I am a Back-End guy that likes SQL Databases, Business Intelligence ETL and Reporting. 
        Which can be hard to demonstrate publically. But by recently Learning C# I have found a way to display 
        these skills. This page was built in order of most used to least TSQL, ASP.NET / C#, SSIS,  HTML, CSS, SSRS, Tableau, and Javascript.
        Do not hold my Webpage UI design against me it is not what I normally do for work. 
        But it was a fun journey learning another language like C# and I now understand how it will 
        improve my SQL and SSIS Scripting abilities in the future. So click some buttons and examine 
        what I've created he some key points...</p><br />

        <h2>Original Site's Purpose?</h2><br />
    <p>My Clients had Customer Medical Data that was protected by HIPPA and needed to by private to everyone except 
        the owners. So I encrypted a few columns in the Database's Customer_Dim TABLE I created for him to hide such protected personal 
        information. I started the main project by creating a new database to enter all of the company's key points of interest. Starting with 
        tables, identity columns, Primary key and Foriegn key relationships, about 25 Stored procedures for business system processing, 
        a front end site (which was more robust than this one but I want to respect their privacy and copyrights), and reports to 
        give Admins insights on company performance. All data on this site is fabricated to protect my non disclosure with my clients. 
        <br /><br />
        Step 1: Login as "web_user" Password "web_user. So go to the Search Page and look at the Customers_Dim 
        table you will see the Customer Data columns are encrypted. Step 2: Next logout and Log back in as "web_admn"
        Password"web_admin". You will see a new button apears on the "Default.aspx" webpage called Admin Search. Click 
        that button to see the modified unencrypted data in Search page. Go back to the customers_Dim table and you will see the Customer Data is DECRYPTED. All of 
        this is done with Column Encryption with Symetric Keys and Certificates. Different Users needed differet roles also. 
        So through SSMS in my database they were all assigned different roles like data_reader, data_writer, and given access to some 
        stored procedures while restricting access to most DDL commands, Certificates, and Keys. </p><br /><br />
    <p>My Clients also wanted information on the success of Sales & Marketing Campagins and also the frquency of growth & slumps of 
        their company throughout the year. Acknowleging some important KPI's for any business I created some Dashboards for quick 
        information reguarding these KPI's of my client's so he could make key business descisions on sales,
        marketing, discounts for repeat customers, increasing of supply during high sale months and predicting
        these high sale months in future years for business preparedness. Also advice for increasing company Consultations during slow sales periods during the year.
        I exceeded my clients expectations by 
        filling the role of a 1 man deveolper army.</p><br />
        <p>I choose to add Tableu  reports into the site because Tablaue is very popular in the
            Private sector. I had troubles with ReportViewer in Visual Studio (aparently discountinued from VS since 2005 or 2008).
            I was able to install it but could not make use of it for my SSRS reports due to lack of info. Origanally I used the local report server 
            for my clients SSRS reporting needs instead of trying to save local copies of .rdlc reports on a website. Using SSIS packages to extract data from 
            Database tables & Stored Procedure Result sets to Flat Files I imported the data to Tableau Public for this demonstration. I am not expert but 
            once you know 1 reporting system learning another is done in half the time. So I have a simple Dashboards containing the most important KPI'S from 
            this business Model. </p> <h8 style="color:red;">PLEASE CLICK ON REPORT TABS AT THE TOP OF REPORTS PAGE TO SEE THEM ALL!</h8>
        <br /><br />
        <p>*****<h3>So should I publish this on my resume or give the link to recruiters Subzero???</h3><br />
            Will it help me get a job 
            or reduce some of the simple questions that are asked on interviews. Or does this open me up to criticism? Still some bugs on 
            site but I'm still working through them. 
            I enjoyed this project and it only took me about 45 days to complete while still working full time. If you 
            want any of the SQL information displayed its yours. Just let me know how to present it? Any ideas or suggestions 
            for me are helpful. I also realize none of this is neccesary to get a job but I built it becasue I have a few 
            months of time on my hands before applying for new jobs because I'm waiting to get my drivers liscence reinstated. Also 
            I accepted an offer for my property in Maine which will make it easier to move where jobs are. Should all be soon!
        </p><br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

