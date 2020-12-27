<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="IMRDStaff.aspx.cs" Inherits="IMRDStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NormalMaster" Runat="Server">
<style>
p
{
    color:Black;
}
td
{
    color:Black;
}
</style>
<br />
<br />
<table class="col-md-12 table-bordered table-striped table-condensed cf">
<thead class="cf">
<tr>
<th style="text-align: center;">Sr. No.</th>
<th style="text-align: center;">Name of Faculties</th>
<th class="numeric" style="text-align: center;">Qualification</th>
<th class="numeric" style="text-align: center;">Specialization</th>
<th class="numeric" style="text-align: center;">Designation</th>
</tr>
</thead>
<tbody>
<tr>
<td data-title="Sr. No.">01</td>
<td data-title="Name">Dr. VAISHALI B. PATIL</td>
<td class="numeric" data-title="Qualifcation">MCA, PHD (Comp. Sci.)</td>
<td class="numeric" data-title="Specialization">A.I., N.L.P.</td>
<td class="numeric" data-title="Designation">DIRECTOR</td>
</tr>
<tr>
<td data-title="Sr. No.">02</td>
<td data-title="Name">Mr. MANOJ N. BEHERE</td>
<td class="numeric" data-title="Qualification">M.Sc.(Comp.), MCA</td>
<td class="numeric" data-title="Specialization">DATA STRUCTURE</td>
<td class="numeric" data-title="Designation">HOD – MCA</td>
</tr>
<tr>
<td data-title="Sr. No.">03</td>
<td data-title="Name">Mr. MANOJ B. PATEL</td>
<td class="numeric" data-title="Qualification">MCM., MCA, PHD( pursuing)</td>
<td class="numeric" data-title="Specialization">DBMS, LINUX</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">04</td>
<td data-title="Name">Mr. TUSHAR R. PATEL</td>
<td class="numeric" data-title="Qualification">MCM, MCA ,PHD( pursuing)</td>
<td class="numeric" data-title="Specialization">ASP, JAVA</td>
<td class="numeric" data-title="Designation">HOD – UG</td>
</tr>
<tr>
<td data-title="Sr. No.">05</td>
<td data-title="Name">Mr. NARENDRASING S. RAJJPUT</td>
<td class="numeric" data-title="Qualification">MCA ,PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">DS, DAA</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">06</td>
<td data-title="Name">Mr. MANOJKUMAR S. SONAWANE</td>
<td class="numeric" data-title="Qualification">M.Sc.(Comp.)</td>
<td class="numeric" data-title="Specialization">JAVA, DBMS</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">07</td>
<td data-title="Name">Mrs. SHUBHANGI G. PINGALE</td>
<td class="numeric" data-title="Qualification">M.Com., M.Phil.</td>
<td class="numeric" data-title="Specialization">ACCOUNT</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">08</td>
<td data-title="Name">Mr. SUMIT K. BIDE</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">ASP.NET, PHP,SOCKET PROG</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">09</td>
<td data-title="Name">Mr. KEDAR S. APTE</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">C++, DS</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">10</td>
<td data-title="Name">Mr. MANOJ B. PATIL</td>
<td class="numeric" data-title="Qualification">MCM, M.Sc.(Comp.), PHD( pursuing)</td>
<td class="numeric" data-title="Specialization">SQL, PHP</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">11</td>
<td data-title="Name">Mr. JAYPALSING E. RAJPUT</td>
<td class="numeric" data-title="Qualification">MCM ,PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">ASP.NET,Flash,HTML</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">12</td>
<td data-title="Name">Mrs. VIJAYA S. AHIRE</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">VC++</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">13</td>
<td data-title="Name">Mr. MAHESH K. BHAVSAR</td>
<td class="numeric" data-title="Qualification">MCM, MBA(IT) ,PHD( pursuing)</td>
<td class="numeric" data-title="Specialization">HTML, ANIMATION</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">14</td>
<td data-title="Name">Mr. AMAR K. GAUR</td>
<td class="numeric" data-title="Qualification">MBA (Mkrt. &amp; HR ), PHD ( pursuing)</td>
<td class="numeric" data-title="Specialization">MARKETING &amp; HR MNGT.</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">15</td>
<td data-title="Name">Mr. YOGESH C. SHETHIYA</td>
<td class="numeric" data-title="Qualification">M.Com., MBA(Mkrt), PHD( pursuing)</td>
<td class="numeric" data-title="Specialization">MARKETING</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">16</td>
<td data-title="Name">Mr. DINESH A. BORASE</td>
<td class="numeric" data-title="Qualification">M.A.(English),PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">ENGLISH</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">17</td>
<td data-title="Name">Mr. SWAPNIL P. GOJE</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">C++. S/W. ENGG.</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">18</td>
<td data-title="Name">Mrs. MANSI G. VAIDYA</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">SAD.OA.</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">19</td>
<td data-title="Name">Mr. SACHIN S. SURANA</td>
<td class="numeric" data-title="Qualification">MBA(Mkrt),PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">ACCOUNT</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">20</td>
<td data-title="Name">Mr. AMUL S. TAMBOLI</td>
<td class="numeric" data-title="Qualification">MBA(Mkrt) ,PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">BANKING &amp; FINANCE</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">21</td>
<td data-title="Name">Mr. AMIT P. PATIL</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">LINUX</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">22</td>
<td data-title="Name">Mr. VISHAL PAWAR</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">.NET</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">23</td>
<td data-title="Name">MS. SHRADDHA R. KABRA</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">.NET</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">24</td>
<td data-title="Name">MS. MAMTA P. WADHAVA</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">PHP, HTML 5, CSS</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">25</td>
<td data-title="Name">Mrs. CHHAYA S. PATIL</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">VC++, CC</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">26</td>
<td data-title="Name">MS. AMITA C. PATIL</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">C++, JAVA, SQL</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">27</td>
<td data-title="Name">MS. PRIYANKA R. SONAWANE</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">.NET</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">28</td>
<td data-title="Name">MS. ANKITA K. KOTHARI</td>
<td class="numeric" data-title="Qualification">MCA</td>
<td class="numeric" data-title="Specialization">C++, PHP, .NET</td>
<td class="numeric" data-title="Designation">ASST. PROFESSOR</td>
</tr>
<tr>
<td data-title="Sr. No.">29</td>
<td data-title="Name">Mr. BIPIN S. PATIL</td>
<td class="numeric" data-title="Qualification">B.P.Ed. ,M.Phil ,PHD(pursuing)</td>
<td class="numeric" data-title="Specialization">SPORT</td>
<td class="numeric" data-title="Designation">SPORT TEACHER</td>
</tr>
<tr>
<td data-title="Sr. No.">30</td>
<td data-title="Name">Mrs. KAVITA G. PATIL</td>
<td class="numeric" data-title="Qualification">M.LIB.</td>
<td class="numeric" data-title="Specialization">LIBRARY &amp; INFO. SCIENCE</td>
<td class="numeric" data-title="Designation">LIBRARIAN</td>
</tr>
<tr>
<td data-title="Sr. No.">31</td>
<td data-title="Name">Mrs. NILIMA D. PATIL</td>
<td class="numeric" data-title="Qualification">M.LIB.</td>
<td class="numeric" data-title="Specialization">LIBRARY &amp; INFO. SCIENCE</td>
<td class="numeric" data-title="Designation">ASST. LIBRARIAN</td>
</tr>
<tr>
<td data-title="Sr. No.">32</td>
<td data-title="Name">Mrs. RAKSHA D. SUSHIR</td>
<td class="numeric" data-title="Qualification">B.PHARM. ,Certificate Course in Communication Skill</td>
<td class="numeric" data-title="Specialization">C.S-TRAINER</td>
<td class="numeric" data-title="Designation">VISITING-FACULTY</td>
</tr>
<tr>
<td data-title="Sr. No.">33</td>
<td data-title="Name">Mrs. SANGITA P. PATIL</td>
<td class="numeric" data-title="Qualification">M.SC. ( MATHS )</td>
<td class="numeric" data-title="Specialization">BUSINESS STATISTICS</td>
<td class="numeric" data-title="Designation">VISITING-FACULTY</td>
</tr>
</tbody>
</table>
</asp:Content>

