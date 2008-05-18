within ;
package ComplexLib
  "Library for steady-state analysis of AC circuits within phasor domain, version 1.0"
      annotation (
        Documentation(info="<HTML>
<P>
This library contains electrical components suitable for steady-state
analysis of AC circuits with fixed frequency (analysis within phasor
domain using so-called time phasors).
Under special assumptions, the library can also be used to investigate AC
circuits in the quasi-stationary mode.<br><br>
An introduction is given e.g. in O. Enge, C. Clau&szlig;, P. Schneider,
P. Schwarz, M. Vetter, S. Schwunk:
Quasi-stationary AC analysis using phasor description with Modelica.
<em>5th Int. Modelica Conf.</em>, Vienna, Austria, September 4-5, 2006,
Proc. pp. 579-588.
</P>
<p>
  <dt><b>Main Authors:</b></dt>
  <dd>Olaf Enge-Rosenblatt (and partially Christoph Clau&szlig;)<br>
  Fraunhofer Institut Integrierte Schaltungen<br>
  Institutsteil Entwurfsautomatisierung IIS/EAS<br>
  Zeunerstra&szlig;e 38<br>
  01069 Dresden<br>
  Germany<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd><br>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer Institut Solare Energiesysteme ISE<br>
  Heidenhofstra&szlig;e 2<br>
  79110 Freiburg<br>
  Germany<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"), uses(Modelica(version="3.0")));

  import SI = Modelica.SIunits;

package UsersGuide "User's Guide of ComplexLib"

  annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
The package <b>ComplexLib</b> is a <b>free</b> Modelica library for
steady-state analysis of linear AC circuits with fixed frequency.
In this context, an AC circuit is understood as a set of components which
are coupled galvanically among each other.
The package provides model components with certain interface definitions.
The behavior of the electrical components is described using phasor domain
(so-called time phasors).
Under special assumptions, the library can also be used to investigate AC
circuits in the quasi-stationary mode (see package <tt>Quasi-stationary mode</tt>
for more information).<br>
Some components are electromechanical ones.
In these cases, the electrical subsystem is modelled within the phasor domain
while the mechanical subsystem is described using time domain.<br>
The package ComplexLib is fully compatible with the Modelica Standard Library.
An introduction is given e.g. in O. Enge, C. Clau&szlig;, P. Schneider,
P. Schwarz, M. Vetter, S. Schwunk:
Quasi-stationary AC analysis using phasor description with Modelica.
<em>5th Int. Modelica Conf.</em>, Vienna, Austria, September 4-5, 2006,
Proc. pp. 579-588.<br>
<br>
This is a short <b>User's Guide</b> for the ComplexLib.
</p>
</html>"));

  class Overview "Overview of Complexlib"

    annotation (Documentation(info="<html>
<p>
The ComplexLib consists of the following main sub-libraries:
</p>
<ul>
<li>SinglePhase: basic and special components for single-phase AC circuits</li>
<li>MultiPhase: basic and special components for multi-phase AC circuits
(well-known is the three-phase system, other numbers of phases are possible)</li>
<li>Machines: some basic electric AC induction machines (asynchronous and
synchronous type)</li>
</ul>
The packages Constants, Interfaces, SIunits and Math provide additional
sub-models and functions.
</html>"));
  end Overview;

  class Connectors "Connectors"

    annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
The ComplexLib uses three kinds of connectors: one for phasor description of
single-phase AC circuits (<tt>ComplexPin</tt>), one for phasor description of
multi-phase AC circuits (<tt>ComplexPlug</tt>), and one for coupling with
components from rotational mechanics (<tt>Flange_a</tt> or <tt>Flange_b</tt>).<br><br>
The phasor-based connectors are defined within the corresponding packages, see
</p>
<ul>
<li><tt>ComplexLib.SinglePhase.Interfaces.ComplexPin</tt> and</li>
<li><tt>ComplexLib.MultiPhase.Interfaces.ComplexPlug</tt></li>
</ul>
<p>
The mechanical connector of the Modelica Standard Library is used for mechanical
subsystem in the package <tt>ComplexLib.Machines</tt>.
</html>"));
  end Connectors;

  class QuasiStationaryMode "Quasi-stationary mode"

    annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
A quasi-stationary mode is usually not included within phasor domain method.
However under some special assumptions, such an approach is allowed which yields
enormous savings of simulation time.<br><br>
The <b>quasi-stationary mode</b> shall be understood as a <b>sequence of steady
states</b> on the following condition: parameters (which would be constant at
steady-state analysis) may vary extraordinary slowly compared to the system's
dominant time constant <tt>T</tt>.
It is signalized by <b>slow alterations</b> of <b>amplitudes and phases</b> of the
sinusoidal quantities.
Usually, it is a good choise if the dynamic processes have time constants
higher than <tt>10*T</tt>.<br><br>
<b>Attention!!!</b><br>
Please note for the present release that there is no algorithm implemented to test
if variations of parameters are slow enough. Hence, this is still a task to be
done by user.
</html>"));
  end QuasiStationaryMode;

  class Compatibility "Compatibility to Modelica Standard Library"

    annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
Phasor-domain description can be used for linear AC circuits, i.e. for electrical
systems the components of which are coupled galvanically among each other.
In case of an electromechanical system like an induction machine, the complete
electrical subsystem has to be described using phasor domain while the mechanical
subsystem is represented using time domain.<br><br>
Hence, there is no need for compatibility to time-domain represented electrical
circuits.
However, mechanical subsystems are fully compatible to <tt>Modelica.Mechanics.Rotational</tt>.
</html>"));
  end Compatibility;

  class Releases "Release notes"
    class Version_1_0 "Version 1.0 (Mai 18, 2009)"

      annotation (__Dymola_DocumentationClass=true, Documentation(info=
                                                                   "<html>
<p>
First official release of ComplexLib.<br><br>
This release is fully equivalent to the former library Complex Version 3.3
which was developed within the internal Fraunhofer project GENSIM.<br>
The main authors of the library are shown in the main information
on the very top as well as in the package <tt>Contact</tt> of the
User's Guide.
</p>
</html>"));
    end Version_1_0;
  end Releases;

  class License "The Modelica License 2"

    annotation (Documentation(info="<html>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">
This page contains the &ldquo;Modelica License 2&rdquo; which was
released by the Modelica Association on Nov. 19, 2008. It is used for
all material from the Modelica Association provided to the public
after this date. It is recommended that other providers of free
Modelica packages license their library also under &ldquo;Modelica
License 2&rdquo;. Additionally, this document contains a description
how to apply the license and has a &ldquo;Frequently Asked Questions&rdquo;
section.</P>

<P STYLE=\"text-indent: 0pt; line-height: 150%\">
<A HREF=\"#1. The Modelica License 2|outline\">             The Modelica License 2</A>
   (in other formats:
   <A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.html\">standalone html</A>,
   <A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.pdf\">pdf</A>,
   <A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.odt\">odt</A>,
   <A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.doc\">doc</A>)<br>
   <A HREF=\"#2. How to Apply the Modelica License 2|outline\">How to Apply the Modelica License 2</A><br>
   <A HREF=\"#3. Frequently Asked Questions|outline\">         Frequently Asked Questions</A><br>&nbsp;</P>

<hr>
<H4><A NAME=\"_Ref208223390\"></A><A NAME=\"1. The Modelica License 2|outline\"></A>
The Modelica License 2</H4>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>Preamble. </B>The goal of this license is that Modelica related
model libraries, software, images, documents, data files etc. can be
used freely in the original or a modified form, in open source and in
commercial environments (as long as the license conditions below are
fulfilled, in particular sections 2c) and 2d). The Original Work is
provided free of charge and the use is completely at your own risk.
Developers of free Modelica packages are encouraged to utilize this
license for their work.</P>
<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
The Modelica License applies to any Original Work that contains the
following licensing notice adjacent to the copyright notice(s) for
this Original Work:</P>
<P ALIGN=CENTER STYLE=\"text-indent: 0pt\"><B>Licensed
by &lt;name of Licensor&gt; under the Modelica License 2</B></P>
<P STYLE=\"text-indent: 0pt; widows: 2; orphans: 2\"><B>1.
Definitions.</B></P>
<OL style=\"list-style-type:lower-latin\">
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;License&rdquo; is this Modelica License.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;Original Work&rdquo; is any work of authorship, including
        software, images, documents, data files, that contains the above
        licensing notice or that is packed together with a licensing notice
        referencing it.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;Licensor&rdquo; is the provider of the Original Work who has
        placed this licensing notice adjacent to the copyright notice(s) for
        the Original Work. The Original Work is either directly provided by
        the owner of the Original Work, or by a licensee of the owner.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;Derivative Work&rdquo; is any modification of the Original
        Work which represents, as a whole, an original work of authorship.
        For the matter of clarity and as examples:
        </P>
        <OL style=\"list-style-type:upper-latin\">
                <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
                Derivative Work shall not include work that remains separable from
                the Original Work, as well as merely extracting a part of the
                Original Work without modifying it.</P>
                <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
                Derivative Work shall not include (a) fixing of errors and/or (b)
                adding vendor specific Modelica annotations and/or (c) using a
                subset of the classes of a Modelica package, and/or (d) using a
                different representation, e.g., a binary representation.</P>
                <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
                Derivative Work shall include classes that are copied from the
                Original Work where declarations, equations or the documentation
                are modified.
                </P>
                <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
                Derivative Work shall include executables to simulate the models
                that are generated by a Modelica translator based on the Original
                Work (of a Modelica package).</P>
        </OL>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;Modified Work&rdquo; is any modification of the Original Work
        with the following exceptions: (a) fixing of errors and/or (b)
        adding vendor specific Modelica annotations and/or (c) using a
        subset of the classes of a Modelica package, and/or (d) using a
        different representation, e.g., a binary representation.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &quot;Source Code&quot; means the preferred form of the Original
        Work for making modifications to it and all available documentation
        describing how to modify the Original Work.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;You&rdquo; means an individual or a legal entity exercising
        rights under, and complying with all of the terms of, this License.
        </P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        &ldquo;Modelica package&rdquo; means any Modelica library that is
        defined with the<BR>&ldquo;<FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\"><B>package</B></FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\">
        &lt;Name&gt; ... </FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\"><B>end</B></FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\">
        &lt;Name&gt;;</FONT></FONT>&ldquo; Modelica language element.</P>
</OL>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>2. </B><B>Grant of Copyright License. </B>Licensor grants You a
worldwide, royalty-free, non-exclusive, sublicensable license, for
the duration of the copyright, to do the following:</P>
<OL style=\"list-style-type:lower-latin\">
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To reproduce the Original Work in copies, either alone or as part of
        a collection.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To create Derivative Works according to Section 1d) of this License.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To distribute or communicate to the public copies of the <U>Original
        Work</U> or a <U>Derivative Work</U> under <U>this License</U>. No
        fee, neither as a copyright-license fee, nor as a selling fee for
        the copy as such may be charged under this License. Furthermore, a
        verbatim copy of this License must be included in any copy of the
        Original Work or a Derivative Work under this License.<BR>      For
        the matter of clarity, it is permitted A) to distribute or
        communicate such copies as part of a (possible commercial)
        collection where other parts are provided under different licenses
        and a license fee is charged for the other parts only and B) to
        charge for mere printing and shipping costs.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To distribute or communicate to the public copies of a <U>Derivative
        Work</U>, alternatively to Section 2c), under <U>any other license</U>
        of your choice, especially also under a license for
        commercial/proprietary software, as long as You comply with Sections
        3, 4 and 8 below. <BR>      For the matter of clarity, no
        restrictions regarding fees, either as to a copyright-license fee or
        as to a selling fee for the copy as such apply.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To perform the Original Work publicly.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
        To display the Original Work publicly.</P>
</OL>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>3. </B><B>Acceptance. </B>Any use of the Original Work or a
Derivative Work, or any action according to either Section 2a) to 2f)
above constitutes Your acceptance of this License.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>4. </B><B>Designation of Derivative Works and of Modified Works.
</B>The identifying designation of Derivative Work and of Modified
Work must be different to the corresponding identifying designation
of the Original Work. This means especially that the (root-level)
name of a Modelica package under this license must be changed if the
package is modified (besides fixing of errors, adding vendor specific
Modelica annotations, using a subset of the classes of a Modelica
package, or using another representation, e.g. a binary
representation).</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>5. </B><B>Grant of Patent License.</B>
Licensor grants You a worldwide, royalty-free, non-exclusive, sublicensable license,
under patent claims owned by the Licensor or licensed to the Licensor by
the owners of the Original Work that are embodied in the Original Work
as furnished by the Licensor, for the duration of the patents,
to make, use, sell, offer for sale, have made, and import the Original Work
and Derivative Works under the conditions as given in Section 2.
For the matter of clarity, the license regarding Derivative Works covers
patent claims to the extent as they are embodied in the Original Work only.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>6. Provision of </B><B>Source Code. </B>Licensor agrees to provide
You with a copy of the Source Code of the Original Work but reserves
the right to decide freely on the manner of how the Original Work is
provided.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For the matter of clarity, Licensor might provide only a binary
representation of the Original Work. In that case, You may (a) either
reproduce the Source Code from the binary representation if this is
possible (e.g., by performing a copy of an encrypted Modelica
package, if encryption allows the copy operation) or (b) request the
Source Code from the Licensor who will provide it to You.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>7. </B><B>Exclusions from License Grant. </B>Neither the names of
Licensor, nor the names of any contributors to the Original Work, nor
any of their trademarks or service marks, may be used to endorse or
promote products derived from this Original Work without express
prior permission of the Licensor. Except as otherwise expressly
stated in this License and in particular in Sections 2 and 5, nothing
in this License grants any license to Licensor&rsquo;s trademarks,
copyrights, patents, trade secrets or any other intellectual
property, and no patent license is granted to make, use, sell, offer
for sale, have made, or import embodiments of any patent claims.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No license is granted to the trademarks of
Licensor even if such trademarks are included in the Original Work,
except as expressly stated in this License. Nothing in this License
shall be interpreted to prohibit Licensor from licensing under terms
different from this License any Original Work that Licensor otherwise
would have a right to license.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>8. </B><B>Attribution Rights. </B>You must retain in the Source
Code of the Original Work and of any Derivative Works that You
create, all author, copyright, patent, or trademark notices, as well
as any descriptive text identified therein as an &quot;Attribution
Notice&quot;. The same applies to the licensing notice of this
License in the Original Work. For the matter of clarity, &ldquo;author
notice&rdquo; means the notice that identifies the original
author(s). <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You must cause the Source Code for any Derivative
Works that You create to carry a prominent Attribution Notice
reasonably calculated to inform recipients that You have modified the
Original Work. <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In case the Original Work or Derivative Work is not provided in
Source Code, the Attribution Notices shall be appropriately
displayed, e.g., in the documentation of the Derivative Work.</P>

<P STYLE=\"text-indent: 0pt\"><B>9. </B><B>Disclaimer
of Warranty. <BR></B><U><B>The Original Work is provided under this
License on an &quot;as is&quot; basis and without warranty, either
express or implied, including, without limitation, the warranties of
non-infringement, merchantability or fitness for a particular
purpose. The entire risk as to the quality of the Original Work is
with You.</B></U><B> </B>This disclaimer of warranty constitutes an
essential part of this License. No license to the Original Work is
granted by this License except under this disclaimer.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>10. </B><B>Limitation of Liability. </B>Under no circumstances and
under no legal theory, whether in tort (including negligence),
contract, or otherwise, shall the Licensor, the owner or a licensee
of the Original Work be liable to anyone for any direct, indirect,
general, special, incidental, or consequential damages of any
character arising as a result of this License or the use of the
Original Work including, without limitation, damages for loss of
goodwill, work stoppage, computer failure or malfunction, or any and
all other commercial damages or losses. This limitation of liability
shall not apply to the extent applicable law prohibits such
limitation.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>11. </B><B>Termination. </B>This License conditions your rights to
undertake the activities listed in Section 2 and 5, including your
right to create Derivative Works based upon the Original Work, and
doing so without observing these terms and conditions is prohibited
by copyright law and international treaty. Nothing in this License is
intended to affect copyright exceptions and limitations. This License
shall terminate immediately and You may no longer exercise any of the
rights granted to You by this License upon your failure to observe
the conditions of this license.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>12. </B><B>Termination for Patent Action. </B>This License shall
terminate automatically and You may no longer exercise any of the
rights granted to You by this License as of the date You commence an
action, including a cross-claim or counterclaim, against Licensor,
any owners of the Original Work or any licensee alleging that the
Original Work infringes a patent. This termination provision shall
not apply for an action alleging patent infringement through
combinations of the Original Work under combination with other
software or hardware.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>13. </B><B>Jurisdiction. </B>Any action or suit relating to this
License may be brought only in the courts of a jurisdiction wherein
the Licensor resides and under the laws of that jurisdiction
excluding its conflict-of-law provisions. The application of the
United Nations Convention on Contracts for the International Sale of
Goods is expressly excluded. Any use of the Original Work outside the
scope of this License or after its termination shall be subject to
the requirements and penalties of copyright or patent law in the
appropriate jurisdiction. This section shall survive the termination
of this License.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>14. </B><B>Attorneys&rsquo; Fees. </B>In any action to enforce the
terms of this License or seeking damages relating thereto, the
prevailing party shall be entitled to recover its costs and expenses,
including, without limitation, reasonable attorneys' fees and costs
incurred in connection with such action, including any appeal of such
action. This section shall survive the termination of this License.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; widows: 2; orphans: 2\">
<B>15. </B><B>Miscellaneous. </B>
</P>
<OL style=\"list-style-type:lower-latin\">
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">If any
        provision of this License is held to be unenforceable, such
        provision shall be reformed only to the extent necessary to make it
        enforceable.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">No verbal
        ancillary agreements have been made. Changes and additions to this
        License must appear in writing to be valid. This also applies to
        changing the clause pertaining to written form.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">You may use the
        Original Work in all ways not otherwise restricted or conditioned by
        this License or by law, and Licensor promises not to interfere with
        or be responsible for such uses by You.</P>
</OL>

<hr>

<H4><A NAME=\"2. How to Apply the Modelica License 2|outline\"></A>
How to Apply the Modelica License 2</H4>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">
At the top level of your Modelica package and at every important
subpackage, add the following notices in the info layer of the
package:</P>

<table border=\"0\"><tr><td>&nbsp;&nbsp;&nbsp;</td><td>
Licensed by &lt;Licensor&gt; under the Modelica License 2<br>
Copyright &copy; &lt;year1&gt;-&lt;year2&gt;, &lt;name of copyright
holder(s)&gt;.
</td></tr></table>

<table border=\"0\"><tr><td>&nbsp;&nbsp;&nbsp;</td><td>
<I>This Modelica package is <U>free</U> software and
the use is completely at <U>your own risk</U>;
it can be redistributed and/or modified under the terms of the
Modelica license 2, see the license conditions (including the
disclaimer of warranty)
<A HREF=\"modelica://Library.UsersGuide.ModelicaLicense2\">here</A></U>
or at
<A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2\">
http://www.modelica.org/licenses/ModelicaLicense2</A>.
</td></tr></table>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">Include
a copy of the Modelica License 2 under
<B>&lt;library&gt;.UsersGuide.ModelicaLicense2</B>
(use <A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.mo\">
http://www.modelica.org/licenses/ModelicaLicense2.mo</A>). Furthermore, add
the list of authors and contributors under
<B>&lt;library&gt;.UsersGuide.Contributors</B> or
<B>&lt;library&gt;.UsersGuide.Contact</B>.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">For
example, sublibrary Modelica.Blocks of the Modelica Standard Library
may have the following notices:</P>

<table border=\"0\"><tr><td>&nbsp;&nbsp;&nbsp;</td><td>
Licensed by Modelica Association under the Modelica License 2<br>
Copyright &copy; 1998-2008, Modelica Association.
</td></tr></table>

<table border=\"0\"><tr><td>&nbsp;&nbsp;&nbsp;</td><td>
<I>This Modelica package is <U>free</U> software and
the use is completely at <U>your own risk</U>;
it can be redistributed and/or modified under the terms of the
Modelica license 2, see the license conditions (including the
disclaimer of warranty)
<A HREF=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">here</A></U>
or at
<A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2\">
http://www.modelica.org/licenses/ModelicaLicense2</A>.</I>
</td></tr></table>


<P STYLE=\"text-indent: 0pt; font-weight: medium\">For
C-source code and documents, add similar notices in the corresponding
file.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">For
images, add a &ldquo;readme.txt&rdquo; file to the directories where
the images are stored and include a similar notice in this file.</P>


<P STYLE=\"text-indent: 0pt; font-weight: medium\">In
these cases, save a copy of the Modelica License 2 in one directory
of the distribution, e.g.,
<A HREF=\"http://www.modelica.org/licenses/ModelicaLicense2.html\">
http://www.modelica.org/licenses/ModelicaLicense2.html</A>
in directory <B>&lt;library&gt;/help/documentation/ModelicaLicense2.html</B>.</P>


<hr>
<H4><A NAME=\"_Ref202857474\"></A><A NAME=\"3. Frequently Asked Questions|outline\"></A>
Frequently Asked Questions</H4>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">
This section contains questions/answer to users and/or distributors of
Modelica packages and/or documents under Modelica License 2. Note,
the answers to the questions below are not a legal interpretation of
the Modelica License 2. In case of a conflict, the language of the
license shall prevail.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><BR>
</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; color: green; font-size:140%\">
<b>Using or Distributing a Modelica <U>Package</U> under the Modelica License 2</b></P>

<P STYLE=\"text-indent: 0pt\"><B>What are the main
differences to the previous version of the Modelica License?</B></P>
<OL>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        Modelica License 1 is unclear whether the licensed Modelica package
        can be distributed under a different license. Version 2 explicitly
        allows that &ldquo;Derivative Work&rdquo; can be distributed under
        any license of Your choice, see examples in Section 1d) as to what
        qualifies as Derivative Work (so, version 2 is clearer).</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        If You modify a Modelica package under Modelica License 2 (besides
        fixing of errors, adding vendor specific Modelica annotations, using
        a subset of the classes of a Modelica package, or using another
        representation, e.g., a binary representation), you must rename the
        root-level name of the package for your distribution. In version 1
        you could keep the name (so, version 2 is more restrictive). The
        reason of this restriction is to reduce the risk that Modelica
        packages are available that have identical names, but different
        functionality.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        Modelica License 1 states that &ldquo;It is not allowed to charge a
        fee for the original version or a modified version of the software,
        besides a reasonable fee for distribution and support<SPAN LANG=\"en-GB\">&ldquo;.
        Version 2 has a </SPAN>similar intention for all Original Work under
        <U>Modelica License 2</U> (to remain free of charge and open source)
        but states this more clearly as &ldquo;No fee, neither as a
        copyright-license fee, nor as a selling fee for the copy as such may
        be charged&rdquo;. Contrary to version 1, Modelica License 2 has no
        restrictions on fees for Derivative Work that is provided under a
        different license (so, version 2 is clearer and has fewer
        restrictions).</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        Modelica License 2 introduces several useful provisions for the
        licensee (articles 5, 6, 12), and for the licensor (articles 7, 12,
        13, 14) that have no counter part in version 1.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        Modelica License 2 can be applied to all type of work, including
        documents, images and data files, contrary to version 1 that was
        dedicated for software only (so, version 2 is more general).</P>
</OL>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
Modelica package (under Modelica License 2) as part of my commercial
Modelica modeling and simulation environment?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes,
according to Section 2c). However, you are not allowed to charge a
fee for this part of your environment. Of course, you can charge for
your part of the environment.
</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
Modelica package (under Modelica License 2) under a different
license?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">No.
The license of an unmodified Modelica package cannot be changed
according to Sections 2c) and 2d). This means that you cannot <U>sell</U>
copies of it, any distribution has to be free of charge.</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
Modelica package (under Modelica License 2) under a different license
when I first encrypt the package?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">No.
Merely encrypting a package does not qualify for Derivative Work and
therefore the encrypted package has to stay under Modelica License 2.</P>


<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
Modelica package (under Modelica License 2) under a different license
when I first add classes to the package?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">No.
The package itself remains unmodified, i.e., it is Original Work, and
therefore the license for this part must remain under Modelica
License 2. The newly added classes can be, however, under a different
license.
</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><B>Can
I copy a class out of a Modelica package (under Modelica License 2)
and include it </B><U><B>unmodified</B></U><B> in a Modelica package
under a </B><U><B>commercial/proprietary license</B></U><B>?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">No,
according to article 2c). However, you can include model, block,
function, package, record and connector classes in your Modelica
package under <U>Modelica License 2</U>. This means that your
Modelica package could be under a commercial/proprietary license, but
one or more classes of it are under Modelica License 2.<BR>Note, a
&ldquo;type&rdquo; class (e.g., type Angle = Real(unit=&rdquo;rad&rdquo;))
can be copied and included unmodified under a commercial/proprietary
license (for details, see the next question).</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><B>Can
I copy a type class or </B><U><B>part</B></U><B> of a model, block,
function, record, connector class, out of a Modelica package (under
Modelica License 2) and include it modified or unmodified in a
Modelica package under a </B><U><B>commercial/proprietary</B></U><B>
license</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes,
according to article 2d), since this will in the end usually qualify
as Derivative Work. The reasoning is the following: A type class or
part of another class (e.g., an equation, a declaration, part of a
class description) cannot be utilized &ldquo;by its own&rdquo;. In
order to make this &ldquo;usable&rdquo;, you have to add additional
code in order that the class can be utilized. This is therefore
usually Derivative Work and Derivative Work can be provided under a
different license. Note, this only holds, if the additional code
introduced is sufficient to qualify for Derivative Work. Merely, just
copying a class and changing, say, one character in the documentation
of this class would be no Derivative Work and therefore the copied
code would have to stay under Modelica License 2.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><B>Can
I copy a class out of a Modelica package (under Modelica License 2)
and include it in </B><U><B>modified </B></U><B>form in a
</B><U><B>commercial/proprietary</B></U><B> Modelica package?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes.
If the modification can be seen as a &ldquo;Derivative Work&rdquo;,
you can place it under your commercial/proprietary license. If the
modification does not qualify as &ldquo;Derivative Work&rdquo; (e.g.,
bug fixes, vendor specific annotations), it must remain under
Modelica License 2. This means that your Modelica package could be
under a commercial/proprietary license, but one or more parts of it
are under Modelica License 2.</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
&ldquo;save total model&rdquo; under my commercial/proprietary
license, even if classes under Modelica License 2 are included?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Your
classes of the &ldquo;save total model&rdquo; can be distributed
under your commercial/proprietary license, but the classes under
Modelica License 2 must remain under Modelica License 2. This means
you can distribute a &ldquo;save total model&rdquo;, but some parts
might be under Modelica License 2.</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute a
Modelica package (under Modelica License 2) in encrypted form?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes.
Note, if the encryption does not allow &ldquo;copying&rdquo; of
classes (in to unencrypted Modelica source code), you have to send
the Modelica source code of this package to your customer, if he/she
wishes it, according to article&nbsp;6.</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I distribute an
executable under my commercial/proprietary license, if the model from
which the executable is generated uses models from a Modelica package
under Modelica License 2?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes,
according to article 2d), since this is seen as Derivative Work. The
reasoning is the following: An executable allows the simulation of a
concrete model, whereas models from a Modelica package (without
pre-processing, translation, tool run-time library) are not able to
be simulated without tool support. By the processing of the tool and
by its run-time libraries, significant new functionality is added (a
model can be simulated whereas previously it could not be simulated)
and functionality available in the package is removed (e.g., to build
up a new model by dragging components of the package is no longer
poss"   + "ible with the executable).</P>

<P STYLE=\"text-indent: 0pt\"><B>Is my modification to
a Modelica package (under Modelica License 2) a Derivative Work?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">It
is not possible to give a general answer to it. To be regarded as &quot;an
original work of authorship&quot;, a derivative work must be
different enough from the original or must contain a substantial
amount of new material. Making minor changes or additions of little
substance to a preexisting work will not qualify the work as a new
version for such purposes.
</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><BR>
</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium; color: green; font-size:140%\">
<b>Using or Distributing a Modelica <U>Document</U> under the Modelica License 2</b></P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\">This
section is devoted especially for the following applications:</P>
<OL>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        A Modelica tool extracts information out of a Modelica package and
        presents the result in form of a &ldquo;manual&rdquo; for this
        package in, e.g., html, doc, or pdf format.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        The Modelica language specification is a document defining the
        Modelica language. It will be licensed under Modelica License 2.</P>
        <LI><P STYLE=\"text-indent: 0pt; font-weight: medium\">
        Someone writes a book about the Modelica language and/or Modelica
        packages and uses information which is available in the Modelica
        language specification and/or the corresponding Modelica package.</P>
</OL>

<P STYLE=\"text-indent: 0pt\"><B>Can I sell a manual
that was basically derived by extracting information automatically
from a Modelica package under Modelica License 2 (e.g., a &ldquo;reference
guide&rdquo; of the Modelica Standard Library):</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes.
Extracting information from a Modelica package, and providing it in a
human readable, suitable format, like html, doc or pdf format, where
the content is significantly modified (e.g. tables with interface
information are constructed from the declarations of the public
variables) qualifies as Derivative Work and there are no restrictions
to charge a fee for Derivative Work under alternative 2d).</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><B>Can
I copy a text passage out of a Modelica document (under Modelica
License 2) and use it </B><U><B>unmodified</B></U><B> in my document
(e.g. the Modelica syntax description in the Modelica Specification)?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes.
In case you distribute your document, the copied parts are still
under Modelica License 2 and you are not allowed to charge a license
fee for this part. You can, of course, charge a fee for the rest of
your document.</P>

<P STYLE=\"text-indent: 0pt; font-weight: medium\"><B>Can
I copy a text passage out of a Modelica document (under Modelica
License 2) and use it in </B><U><B>modified</B></U><B> form in my
document?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">Yes,
the creation of Derivative Works is allowed. In case the content is
significantly modified this qualifies as Derivative Work and there
are no restrictions to charge a fee for Derivative Work under
alternative 2d).</P>

<P STYLE=\"text-indent: 0pt\"><B>Can I sell a printed
version of a Modelica document (under Modelica License 2), e.g., the
Modelica Language Specification?</B></P>
<P STYLE=\"text-indent: 0pt; font-weight: medium\">No,
if you are not the copyright-holder, since article 2c) does not allow
a selling fee for a (in this case physical) copy. However, mere
printing and shipping costs may be recovered.</P>
</html>
"));
  end License;

  class Contact "Contact"

    annotation (Documentation(info="<html>

<p>
<dl>
<dt>The Library ComplexLib was developed by
</p>
<p>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer Institut Integrierte Schaltungen<br>
  Institutsteil Entwurfsautomatisierung IIS/EAS<br>
  Zeunerstra&szlig;e 38<br>
  01069 Dresden<br>
  Germany<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
and <br>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer Institut Solare Energiesysteme ISE<br>
  Heidenhofstra&szlig;e 2<br>
  79110 Freiburg<br>
  Germany<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a>
  </dd>
</p>
</html>"));
  end Contact;
end UsersGuide;

  package Examples "Examples to demonstrate the usage of ComplexLib"

    model RlcCircuit "Simple RLC circuit"
      extends Modelica.Icons.Example;
      ComplexLib.SinglePhase.Basic.Ground ground
        annotation (Placement(transformation(extent={{-70,-40},{-50,-20}})));
      ComplexLib.SinglePhase.Sources.SineVoltage V(V=10) annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={-60,10})));
      ComplexLib.SinglePhase.Basic.Resistor R(R=30)
        annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
      ComplexLib.SinglePhase.Basic.Inductor L(L=0.2)  annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={10,40})));
      annotation (uses(Modelica(version="3.0")), Diagram(coordinateSystem(
              preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics),
        Documentation(info="<html>
<p>
This example shows a simple series of a voltage source with resistor,
inductor, and capacitor.
Because of phasor description, all results have constant values.
</p>
<p>
Simulate for an arbitrary time interval (e.g. 1 s).
</p>
Plot in seperate windows<br>
<ul>
<li><tt>V.v</tt>, <tt>&nbsp;R.v</tt>, <tt>&nbsp;L.v</tt>,<tt>&nbsp;</tt>
and <tt>&nbsp;C.v&nbsp;</tt> versus &quot;Time&quot;</li>
<li><tt>V.phi_v</tt>, <tt>&nbsp;R.phi_v</tt>, <tt>&nbsp;L.phi_v</tt>,<tt>&nbsp;</tt>
and <tt>&nbsp;C.phi_v&nbsp;</tt> versus &quot;Time&quot;</li>
</ul>
to see the corresponding steady-state values.
</p>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
      ComplexLib.SinglePhase.Basic.Capacitor C(C=1e-5)
                                                    annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={40,10})));
    equation
      connect(V.p, R.p)  annotation (Line(
          points={{-60,20},{-60,40},{-40,40}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(R.n, L.p)  annotation (Line(
          points={{-20,40},{0,40}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(V.n, ground.p) annotation (Line(
          points={{-60,0},{-60,-20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(L.n, C.p)         annotation (Line(
          points={{20,40},{40,40},{40,20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(C.n, ground.p)         annotation (Line(
          points={{40,0},{40,-20},{-60,-20}},
          color={0,0,255},
          smooth=Smooth.None));
    end RlcCircuit;

    model VaryingResistance "Electric circuit with varying resistance"
      extends Modelica.Icons.Example;
      ComplexLib.SinglePhase.Basic.Ground ground
        annotation (Placement(transformation(extent={{-70,-40},{-50,-20}})));
      ComplexLib.SinglePhase.Sources.SineVoltage V(V=10) annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={-60,10})));
      ComplexLib.SinglePhase.Basic.Resistor R2(R=2)
        annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
      ComplexLib.SinglePhase.Basic.Inductor L(L=0.005)
                                                      annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={0,10})));
      ComplexLib.SinglePhase.Basic.VariableResistor R3 annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={40,10})));
      Modelica.Blocks.Sources.Ramp Ramp(
        height=5,
        offset=0.01,
        duration=10)
                  annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      annotation (uses(Modelica(version="3.0")), Diagram(coordinateSystem(
              preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics),
        Documentation(info="<html>
<p>
This example shows a purely electric circuit containing a VariableResistor component (R3).
The resistance of R3 is determined depending on time function of component Ramp.
It starts at a very small value (0.01 Ohm) and reaches 5 Ohm after 10 s.<br><br>
Using this example, we would like to give an idea how one can decide if the system
is in a quasi-stationary mode or not.<br><br>
The main (and only) time constant of the system reads <tt>T = L*(R2+R3)/(R2*R3)</tt>.
It is well-known for first-order components that, after a step-like change of an
input signal, the output signal reaches 95 % of �ts final value after a time period
of <tt>3*T</tt>.
This time period is called <tt>decayTime</tt>.
Checking the difference between <tt>decayTime</tt> and the time interval of the
simulation experiment yields the information if the system is in a quasi-stationary
mode.<br><br>
Because of variable resistor R3, it is necessary to calculate <tt>decayTime</tt>
during the simulation experiment according to <tt>decayTime = 3*L*(R2+R3)/(R2*R3)</tt>.
The Boolean <tt>quasiStationaryOk</tt> tests if <tt>decayTime</tt> is smaller than
the simulation interval <tt>tInterval</tt> (which is necessary for quasi-stationary
mode).
Hence in the <b>first part</b> of the simulation (Time &lt; 2.4 s), the system is
<b>not</b> in a <b>quasi-stationary</b> mode and the appropriate points in time of the
result curves represent only a series of steady states without any correlation with time.
In the <b>second part</b> of the simulation (Time &gt; 2.4 s), the system <b>is
quasi-stationary</b> and the result curves reflect a correct relationship with time.
</p>
<p>
Simulate until 10 s.
</p>
Plot in seperate windows<br>
<ul>
<li><tt>V.v</tt>, <tt>&nbsp;R2.v</tt>,<tt>&nbsp;</tt>
and <tt>&nbsp;L.v&nbsp;</tt> versus &quot;Time&quot;</li>
<li><tt>L.vRe&nbsp;</tt> and <tt>&nbsp;L.vIm&nbsp;</tt> versus &quot;Time&quot;</li>
<li><tt>quasiStationaryOk</tt> versus &quot;Time&quot;</li>
</ul>
to see steady-state sequences or the quasi-stationary plots of the corresponding values.
</p>
<p>
  <br><dt><b>Main Authors:</b></dt>
  <dd>Olaf Enge-Rosenblatt, Christoph Clau&szlig;<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),
        experiment(StopTime=10));
      constant Real tInterval=10/500 "10 seconds devided into 500 intervals";
      Real decayTime;
      Boolean quasiStationaryOk;
    equation
      connect(V.p, R2.p) annotation (Line(
          points={{-60,20},{-60,40},{-40,40}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(R2.n, L.p) annotation (Line(
          points={{-20,40},{1.83697e-015,40},{1.83697e-015,20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(R2.n, R3.p) annotation (Line(
          points={{-20,40},{40,40},{40,20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(V.n, ground.p) annotation (Line(
          points={{-60,0},{-60,-20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(L.n, ground.p) annotation (Line(
          points={{-1.83697e-015,0},{0,0},{0,-20},{-60,-20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(R3.n, ground.p) annotation (Line(
          points={{40,0},{40,-20},{-60,-20}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(Ramp.y, R3.R) annotation (Line(
          points={{81,-30},{90,-30},{90,10},{52,10}},
          color={0,0,127},
          smooth=Smooth.None));
      decayTime = 3*L.L*(R2.R+R3.R)/(R2.R*R3.R);
      quasiStationaryOk = decayTime < tInterval;
    end VaryingResistance;

    model QuasiStationaryAIM
      "Asynchronous induction machine in quasi-stationary mode"
      extends Modelica.Icons.Example;
      ComplexLib.MultiPhase.Sources.SignalVoltage signalVoltage annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-40,10})));
      annotation (uses(Modelica(version="3.0")),
        Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics),
        Documentation(info="<html>
<p>
This example deals with a three-phase asynchronous induction machine.
It consists of a simple electrical circuit to drive the motor via a
variable voltage source.
Besides the shaft's interia and a damper component, a variable
time-dependent applied torque is used as load.<br>
The machine's electrical subsystem is connected
to a three-phase voltage source which is the same
as being connected to three single source components.
The three-phase source works with variable amplitude
and phase.
It is governed by two input signals (one for amplitude, one for phase)
for holding symmetrical conditions.
</p>
<p>
Simulate until 40 s.
</p>
<p>
Plot in seperate windows:<br>
<ul>
<li><tt>signalVoltage.V&nbsp;</tt> and <tt>&nbsp;torque.tau&nbsp;</tt>
versus &quot;Time&quot; to see the input stimuli</li>
<li><tt>omega&nbsp;</tt>and <tt>&nbsp;aIM_3ph.inertiaRotor.w&nbsp;</tt>
or <tt>&nbsp;aIM_3ph.s&nbsp;</tt> versus &quot;Time&quot;
to get the slip of the machine (<tt>s=(omega-w)/omega</tt>))</li>
<li><tt>completeElPwr&nbsp;</tt> and <tt>&nbsp;aIM_3ph.P_mech&nbsp;</tt>
versus &quot;Time&quot; to see the power balance</li>
</ul>
always as a sequence of steady states.
</p>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),
        experiment(StopTime=40));
      ComplexLib.MultiPhase.Basic.Star star
        annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
      ComplexLib.SinglePhase.Basic.Ground ground
        annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
      Modelica.Blocks.Sources.Ramp rampV(height=220, duration=10)
        annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
      Modelica.Blocks.Sources.Constant constPhase(k=0)
        annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
      ComplexLib.Machines.BasicMachines.AIM_3ph aIM_3ph(Ls=0.5, Lr=0.5)
                                                        annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={10,10})));
      Modelica.Mechanics.Rotational.Components.Inertia inertia(J=0.15)
        annotation (Placement(transformation(extent={{40,50},{60,70}})));
      Modelica.Mechanics.Rotational.Components.Damper damper(d=1)
        annotation (Placement(transformation(extent={{40,10},{60,30}})));
      Modelica.Mechanics.Rotational.Components.Fixed fixed
        annotation (Placement(transformation(extent={{70,10},{90,30}})));
      Modelica.Mechanics.Rotational.Sources.Torque torque
        annotation (Placement(transformation(extent={{60,-20},{40,0}})));
      Modelica.Blocks.Sources.Ramp rampT(
        duration=10,
        height=400,
        startTime=20)
        annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
      Real omega;
      Real completeElPwr;
    equation
      connect(rampV.y, signalVoltage.V) annotation (Line(
          points={{-59,50},{-20,50},{-20,10},{-33,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(constPhase.y, signalVoltage.phaseRef) annotation (Line(
          points={{-59,10},{-53,10},{-53,10},{-47,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(signalVoltage.plug_p, aIM_3ph.plug_p) annotation (Line(
          points={{-40,20},{-40,30},{0,30},{0,16}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(signalVoltage.plug_n, aIM_3ph.plug_n) annotation (Line(
          points={{-40,0},{-40,-10},{0,-10},{0,4}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(signalVoltage.plug_n, star.plug_p) annotation (Line(
          points={{-40,0},{-40,-30},{-30,-30}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(star.pin_n, ground.p) annotation (Line(
          points={{-10,-30},{0,-30}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(aIM_3ph.shaft, inertia.flange_a) annotation (Line(
          points={{10,20},{10,60},{40,60}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(aIM_3ph.shaft, damper.flange_a) annotation (Line(
          points={{10,20},{10,40},{40,40},{40,20}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(damper.flange_b, fixed.flange) annotation (Line(
          points={{60,20},{80,20}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(aIM_3ph.shaft, torque.flange) annotation (Line(
          points={{10,20},{10,40},{30,40},{30,-10},{40,-10}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(rampT.y, torque.tau) annotation (Line(
          points={{61,-50},{80,-50},{80,-10},{62,-10}},
          color={0,0,127},
          smooth=Smooth.None));
      omega = ComplexLib.Constants.omega;
      completeElPwr = signalVoltage.activePwr[1]+signalVoltage.activePwr[2]
                      +signalVoltage.activePwr[3];
    end QuasiStationaryAIM;
  end Examples;

  package Constants "Package for definitions of constants"
      annotation (Documentation(
          info="<html>
<P>
The package contains the definition of the constant
frequency <tt>f</tt> in <tt>Hz</tt>.
This frequency is used within the complete electrical system
which is modelled using the phasor domain description.<br>
The angular frequency &omega; in <tt>rad/s</tt> is also calculated
and made available.
</P>
</html>"));
    constant SI.Frequency frequency=50
      "Frequency of the complete AC circuit [Hz]";
    constant SI.AngularFrequency omega=2*Modelica.Constants.pi*frequency
      "AngularFrequency of the complete AC circuit [rad/s]";
  end Constants;

  package SinglePhase "Library for phasor domain-based single-phase components"
      annotation (
        Documentation(info="<HTML>
<P>
The package contains subpackages for electrical components of single-phase type
for phasor domain-based AC analysis:
<ul>
<li>Basic: basic components (resistor, inductor, capacitor, conductor, transformers)</li>
<li>Interfaces: connectors and partial models</li>
<li>Sensors: sensors to measure potential, voltage, and current</li>
<li>Sources: sinusoidal voltage, current, or power sources using constant or variable values</li>
</ul>
</P>
<p>
  <dt><b>Main Authors:</b></dt>
<br>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
<br>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</p>
</HTML>
"));
    package Basic
      "Basic electrical phasor domain-based single-phase components"
       annotation (
          Documentation(info="<HTML>
<P>
This package contains basic electrical components for phasor analysis:
<ul>
<li>Ground</li>
<li>Resistor</li>
<li>Inductor</li>
<li>Capacitor</li>
<li>Conductor</li>
<li>VariableResistor</li>
<li>VariableInductor</li>
<li>VariableCapacitor</li>
<li>VariableConductor</li>
</ul>
and the subpackage Transformers.
</P>
</HTML>
"));
      model Ground "Ground node"
        annotation (
          Documentation(info="<HTML>
<P>
Ground of an electrical circuit. The potential phasor <tt>v</tt> at the
ground node is zero. Every electrical circuit has to contain at least
one ground object.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-60,50},{60,50}}),
              Line(points={{-40,30},{40,30}}),
              Line(points={{-20,10},{20,10}}),
              Line(points={{0,100},{0,50}}),
              Text(
                extent={{-144,-60},{138,0}},
                lineColor={0,0,255},
                textString="%name")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(
                points={{-60,50},{60,50}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{-40,30},{40,30}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{-20,10},{20,10}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{0,100},{0,50}},
                color={0,0,255},
                thickness=0.5),
              Text(extent={{-24,-38},{22,-6}}, textString="p.v=0")}),
          Window(
            x=0.23,
            y=0.23,
            width=0.59,
            height=0.63));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p
          "Complex pin (positive)"
                     annotation (Placement(transformation(
              origin={0,100},
              extent={{10,-10},{-10,10}},
              rotation=270)));
      equation
        p.vRe = 0;
        p.vIm = 0;
      end Ground;

      model Resistor "Ideal linear electrical resistor"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter SI.Resistance R=1 "Resistance of component";
        annotation (
        Documentation(info="<HTML>
<P>
The linear resistor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      R*i = v</pre>
There is no phase shift between voltage and current.<br>
The resistance <tti>R</tt> has a constant value.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-70,0}}),
              Line(points={{70,0},{100,0}}),
              Text(
                extent={{-144,-60},{144,-100}},
                lineColor={0,0,0},
                textString="R=%R"),
              Text(
                extent={{-144,50},{144,110}},
                lineColor={0,0,255},
                textString="%name")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(extent={{-70,30},{70,-30}}),
              Line(points={{-100,0},{-70,0}}),
              Line(points={{70,0},{100,0}})}),
          Window(
            x=0.2,
            y=0.06,
            width=0.62,
            height=0.69));
      equation
        vRe = R*iRe;
        vIm = R*iIm;
      end Resistor;

      model Inductor "Ideal linear electrical inductor"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter SI.AngularFrequency omega=Constants.omega
          "AngularFrequency of the complete AC circuit";
        parameter SI.Inductance L=1 "Inductance of component";
        annotation (
          Documentation(info="<HTML>
<P>
The linear inductor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      j&omega;L*i = v.</pre>
The phase shift between voltage and current is 90&deg;.<br>
The inductance <tt>L</tt> has a constant value.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{60,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{60,0},{100,0}}),
              Line(points={{-100,0},{-60,0}}),
              Text(
                extent={{-138,-60},{144,-102}},
                lineColor={0,0,0},
                textString="L=%L"),
              Text(
                extent={{-148,48},{146,110}},
                lineColor={0,0,255},
                textString="%name")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{62,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{60,0},{100,0}}),
              Line(points={{-100,0},{-60,0}})}),
          Window(
            x=0.3,
            y=0.12,
            width=0.6,
            height=0.6));
      equation
        vRe = -omega*L*iIm;
        vIm =  omega*L*iRe;
      end Inductor;

      model Capacitor "Ideal linear electrical capacitor"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter SI.AngularFrequency omega=Constants.omega
          "AngularFrequency of the complete AC circuit";
        parameter SI.Capacitance C=1 "Capacitance of component";
        annotation (
          Window(
            x=0.32,
            y=0.33,
            width=0.48,
            height=0.58),
          Documentation(info="<HTML>
<P>
The linear capacitor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      i = j&omega;C*v.</pre>
The phase shift between voltage and current is -90&deg;.<br>
The capacitance <tt>C</tt> has a constant value.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(
                points={{-10,28},{-10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,28},{10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(points={{-100,0},{-10,0}}),
              Line(points={{10,0},{100,0}}),
              Text(
                extent={{-136,-60},{136,-100}},
                lineColor={0,0,0},
                textString="C=%C"),
              Text(
                extent={{-142,50},{140,110}},
                lineColor={0,0,255},
                textString="%name")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(
                points={{-10,40},{-10,-40}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,40},{10,-40}},
                color={0,0,255},
                thickness=0.5),
              Line(points={{-100,0},{-10,0}}),
              Line(points={{10,0},{100,0}})}));
      equation
         omega*C*vRe = iIm;
        -omega*C*vIm = iRe;
      end Capacitor;

      model Conductor "Ideal linear electrical conductor"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter ComplexLib.SIunits.Conductance G=1 "Conductance of component";
        annotation (
          Documentation(info="<HTML>
<P>
The linear conductor connects the branch voltage <tt>v</tt> with the
branch current <tt>i</tt> by
<pre>      i = G*v.</pre>
There is no phase shift between voltage and current.<br>
The conductance <tt>G</tt> has a constant value.
</P>
<dl>
<br><dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a></br>
  </dd>
</dl>
</HTML>
"),       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Rectangle(extent={{-70,30},{70,-30}}),
              Line(points={{-100,0},{-70,0}}),
              Line(points={{70,0},{100,0}}),
              Text(
                extent={{-138,-60},{140,-100}},
                lineColor={0,0,0},
                pattern=LinePattern.None,
                textString="G=%G"),
              Text(
                extent={{-142,50},{140,110}},
                lineColor={0,0,255},
                textString="%name")}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-100,0},{-70,0}}),
              Line(points={{70,0},{100,0}}),
              Rectangle(extent={{-70,30},{70,-30}})}),
          Window(
            x=0,
            y=0.2,
            width=0.63,
            height=0.68));
      equation
        G*vRe = iRe;
        G*vIm = iIm;
      end Conductor;

      model VariableResistor
        "Ideal linear electrical resistor with variable resistance"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        Modelica.Blocks.Interfaces.RealInput R
          "Resistance of component via input signal [Ohm]"
                    annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        annotation (
          Documentation(info="<HTML>
<P>
The linear resistor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      R*i = v.</pre>
There is no phase shift between voltage and current.<br>
The resistance <tt>R</tt> is specified by input signal.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the resistance <tt>R</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is recommended that the R signal should not cross the zero value.<br>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Text(
                extent={{-148,-100},{144,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-100,0},{-70,0}}),
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{70,0},{100,0}}),
              Line(points={{0,100},{0,30}}, color={0,0,255})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-70,0}}),
              Line(points={{0,100},{0,30}}, color={0,0,255}),
              Line(points={{70,0},{100,0}})}));
      equation
        vRe = R*iRe;
        vIm = R*iIm;
      end VariableResistor;

      model VariableInductor
        "Ideal linear electrical inductor with variable inductance"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter SI.AngularFrequency omega=Constants.omega
          "AngularFrequency of the complete AC circuit";
        Modelica.Blocks.Interfaces.RealInput L
          "Inductance of component via input signal [H]"
                    annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        annotation (
          Documentation(info="<HTML>
<P>
The linear inductor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      j&omega;L*i = v.</pre>
The phase shift between voltage and current is 90&deg;.<br>
The inductance <tt>L</tt> is specified by input signal.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the inductance <tt>L</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is required that <tt>L &ge; 0</tt>, otherwise an assertion is raised.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-138,-100},{136,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-100,0},{-60,0}}),
              Line(points={{60,0},{100,0}}),
              Line(points={{0,104},{0,8}}, color={0,0,255}),
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{60,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{-100,0},{-60,0}}),
              Line(points={{0,100},{0,8}}, color={0,0,255}),
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{62,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{60,0},{100,0}})}));
      equation
        assert(L>=0,"Inductance L_ (= " + String(L) + ") has to be >= 0!");
        vRe = -omega*L*iIm;
        vIm =  omega*L*iRe;
      end VariableInductor;

      model VariableCapacitor
        "Ideal linear electrical capacitor with variable capacitance"
        extends ComplexLib.SinglePhase.Interfaces.OnePort;
        parameter SI.AngularFrequency omega=Constants.omega
          "AngularFrequency of the complete AC circuit";
        Modelica.Blocks.Interfaces.RealInput C
          "Capacitance of component via input signal [F]"
                    annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        annotation (
          Documentation(info="<HTML>
<P>
The linear capacitor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>        i = j&omega;C*v.</pre>
The phase shift between voltage and current is -90&deg;.<br>
The capacitance <tt>C</tt> is specified by input signal.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the capacitance <tt>C</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is required that <tt>C &ge; 0</tt>, otherwise an assertion is raised.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-136,-100},{134,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-100,0},{-10,0}}),
              Line(points={{10,0},{100,0}}),
              Line(points={{0,102},{0,30}}, color={0,0,255}),
              Line(
                points={{-10,28},{-10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,28},{10,-28}},
                color={0,0,255},
                thickness=0.5)}),
          Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{-100,0},{-10,0}}),
              Line(points={{10,0},{100,0}}),
              Line(points={{0,100},{0,30}}, color={0,0,255}),
              Line(
                points={{-10,28},{-10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,28},{10,-28}},
                color={0,0,255},
                thickness=0.5)}));
      equation
        assert(C>=0,"Capacitance C_ (= " + String(C) + ") has to be >= 0!");
         omega*C*vRe = iIm;
        -omega*C*vIm = iRe;
      end VariableCapacitor;

      model VariableConductor
        "Ideal linear electrical conductor with variable conductance"
       extends ComplexLib.SinglePhase.Interfaces.OnePort;
        Modelica.Blocks.Interfaces.RealInput G
          "Conductance of component via input signal [S]"
                    annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        annotation (
          Documentation(info="<HTML>
<P>
The linear conductor connects the branch voltage phasor <tt>v</tt> with the
branch current phasor <tt>i</tt> by
<pre>      i = G*v.</pre>
There is no phase shift between voltage and current.<br>
The conductance <tt>G</tt> is specified by input signal.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the conductance <tt>G</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is recommended that the G signal should not cross the zero value.<br>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Text(
                extent={{-148,-100},{144,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-98,0},{-70,0}}),
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{70,0},{100,0}}),
              Line(points={{0,102},{0,30}}, color={0,0,255})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-70,0}}),
              Line(points={{0,100},{0,30}}, color={0,0,255}),
              Line(points={{70,0},{100,0}})}));
      equation
        G*vRe = iRe;
        G*vIm = iIm;
      end VariableConductor;

      package Transformers "Phasor domain-based single-phase transformers"
        model IdealTransformer "Ideal electrical transformer"
          extends ComplexLib.SinglePhase.Interfaces.TwoPort;
          parameter Real n = 1 "Turns ratio";
          annotation (
            Documentation(info="<HTML>
<p>
The IdealTransformer is a two-port component with resistive (not inductive!) behaviour.
The left port voltage phasor <tt>v1</tt>, the left port current phasor <tt>i1</tt>,
the right port voltage phasor <tt>v2</tt>, and the right port current phasor <tt>i2</tt> are connected by the following
relations:
<pre>      v1 =  n*v2,
      i2 = -n*i1.</pre>
The turns ratio <tt>n</tt> has a constant real (but usually integer) value.
</p>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p></html>
"),         Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Text(
                  extent={{-101,115},{99,57}},
                  lineColor={0,0,255},
                  textString="%name"),
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}}),
                Text(extent={{-18,-70},{20,-98}}, textString="n=%n")}),
            Diagram(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-33,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}})}),
            Window(
              x=0.26,
              y=0.43,
              width=0.6,
              height=0.6));
        equation
          v1Re = n*v2Re;
          v1Im = n*v2Im;
          i2Re = -n*i1Re;
          i2Im = -n*i1Im;
        end IdealTransformer;
        annotation (
          Documentation(info="<HTML>
<P>
This package contains single-phase transformers for phasor analysis:
<ul>
<li>IdealTransformer</li>
<li>IdealTransformer with phase shift</li>
<li>SimpleTransformer</li>
<li>PowerTransformer</li>
<li>VariableIdealTransformer</li>
<li>VariableSimpleTransformer</li>
<li>VariablePowerTransformer</li>
</ul></P>
</HTML>
"));

        model IdealTransformer2 "Ideal electrical transformer with phase shift"
          extends ComplexLib.SinglePhase.Interfaces.TwoPort;
          parameter Real n = 1 "Turns ratio";
          parameter SI.Angle phase = 0
            "Phase shift between primary and secondary part via input signal";
          annotation (Documentation(info="<HTML>
<P>The IdealTransformer2 extends the IdealTransformer component while considering an arbitrary
but constant phase shift. The left port voltage phasor <tt>v1</tt>,
the left port current phasor <tt>i1</tt>, the right port voltage phasor <tt>v2</tt>, and the right
port current phasor <tt>i2</tt> are connected by the following relations:</p>
<pre>      v1 = n*v2*e^(j&phi;),
      i2 = n*i1*e^(j(&pi;+&phi;)), </pre>
<P>
where <tt>n</tt> is the ratio between primary and secondary winding and &phi; stands for
the phase shift angle <tt>phase</tt>. <br>
Both parameters n and &phi; have constant values.
<P>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>
"),         Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Text(
                  extent={{-100,105},{100,47}},
                  lineColor={0,0,255},
                  textString="%name"),
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{34,-60},{73,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}}),
                Text(extent={{-13,-55},{15,-78}}, textString="n=%n"),
                Text(extent={{-48,-70},{50,-98}}, textString="phase=%phase")}),
            Diagram(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}})}),
            Window(
              x=0.26,
              y=0.43,
              width=0.6,
              height=0.6));
        equation
          v2Re = v1/n*cos(phi_v1+phase);
          v2Im = v1/n*sin(phi_v1+phase);
          i2Re = i1*n*cos(phi_i1+Modelica.Constants.pi+phase);
          i2Im = i1*n*sin(phi_i1+Modelica.Constants.pi+phase);
        end IdealTransformer2;

        model SimpleTransformer "Two coupled linear inductors"
          extends ComplexLib.SinglePhase.Interfaces.TwoPort;
          parameter SI.AngularFrequency omega=Constants.omega
            "AngularFrequency of the complete AC circuit";
          parameter SI.Inductance L1 = 1
            "Self inductance of first winding (main inductance plus stray inductance)";
          parameter SI.Inductance M = 0.99 "Mutual inductance";
          parameter SI.Inductance L2 = 1
            "Self inductance of second winding (main inductance plus stray inductance)";
          annotation (
            Documentation(info="<HTML>
<p>
The SimpleTransformer is a two-port component consisting of two ideal inductors (having no resistance).
Between these inductors, there exists a non-ideal coupling.
The left port voltage phasor <tt>v1</tt>, the left port current phasor <tt>i1</tt>,
the right port voltage phasor <ttv2</tt>, and the right port current phasor <tt>i2</tt> are connected by the following
relations:
<pre>
      v1 = j&omega;*(L1*i1+ M*i2),
      v2 = j&omega;*( M*i1+L2*i2),</pre>
where <tt>M&sup2;&lt;L1*L2</tt> is assumed.
The parameters <tt>L1</tt> and <tt>L2</tt> denote the primary and secondary self inductances, respectively,
while <tt>M</tt> is called mutual (or coupling) inductance.<br>
All inductances have constant values.
</p>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>
"),         Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Text(
                  extent={{-101,115},{99,57}},
                  lineColor={0,0,255},
                  textString="%name"),
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}}),
                Text(extent={{-89,11},{-41,-16}}, textString="L1=%L1"),
                Text(extent={{45,16},{87,-18}}, textString="L2=%L2"),
                Text(extent={{-19,-65},{19,-86}}, textString="M=%M")}),
            Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}})}),
            Window(
              x=0.26,
              y=0.43,
              width=0.6,
              height=0.6));
        equation
          v1Re = -omega*(L1*i1Im+M*i2Im);
          v1Im =  omega*(L1*i1Re+M*i2Re);
          v2Re = -omega*(M*i1Im+L2*i2Im);
          v2Im =  omega*(M*i1Re+L2*i2Re);
        end SimpleTransformer;

        model PowerTransformer "Power transformer including iron losses"
          parameter SI.Resistance R1 = 10 "Primary winding's resistance";
          parameter SI.Resistance R2 = 0.001 "Secondary winding's resistance";
          parameter SI.Resistance R_Fe = 1000000 "Resistance of iron loss";
          parameter SI.Inductance L_h = 1000000 "Main inductance";
          parameter SI.Inductance L_1s = 0.01 "Primary stray inductance";
          parameter SI.Inductance L_2s = 0.000001 "Secondary stray inductance";
          parameter Real w1_w2 = 100 "Turns ratio";
          parameter SI.Angle phase = 0 "Phase shift";
          ComplexLib.SinglePhase.Basic.Resistor resistor1(R=R1)
                             annotation (Placement(transformation(extent={{-90,
                    30},{-70,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.Resistor resistor2(R=R2)
                               annotation (Placement(transformation(extent={{80,
                    30},{60,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.Resistor resistance_Fe(R=R_Fe)
                               annotation (Placement(transformation(
                origin={-60,0},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          ComplexLib.SinglePhase.Basic.Inductor inductance_h(L=L_h)
                              annotation (Placement(transformation(
                origin={-30,0},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          ComplexLib.SinglePhase.Basic.Inductor inductance1s(L=L_1s)
                              annotation (Placement(transformation(extent={{-60,
                    30},{-40,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.Inductor inductance2s(L=L_2s)
                                annotation (Placement(transformation(extent={{
                    48,30},{28,50}}, rotation=0)));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}),
                              graphics),
                               Documentation(info="<HTML>
<p>The PowerTransformer is a two port.
The left port voltage <tt>v1</tt>, left port current <tt>i1</tt>,
right port voltage <tt>v2</tt> and right port current <tt>i2</tt> are connected by the following
relations:
<pre>
      v1  = R1 *i1  + j&omega;L_1s *i1  + R_Fe*j&omega;L_h/(R_Fe + j&omega;L_h)*(i1 + i2')
      v2' = R2'*i2' + j&omega;L_2s'*i2' + R_Fe*j&omega;L_h/(R_Fe + j&omega;L_h)*(i1 + i2')</pre>
<dt>
with:</p>
<pre>      V2' = w1_w2*v2;  i2'=i2/w1_w2;  L_2s'=(w1_w2)^2*L_2s;  R2'=(w1_w2)^2*R2</pre>
<p>
<dt>
This is the common way to describe power transformers.<br>
All parameters have constant values.
</p>
<p>
  <br><dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</dl>
</p>
</html>
"),         Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                    {100,100}}), graphics={
                Text(
                  extent={{-101,115},{99,57}},
                  lineColor={0,0,255},
                  textString="%name"),
                Ellipse(extent={{-54,30},{6,-30}}, lineColor={0,0,255}),
                Ellipse(extent={{-6,30},{54,-30}}, lineColor={0,0,255}),
                Line(points={{-54,0},{-80,0}}, color={0,0,255}),
                Line(points={{-80,0},{-80,-40}}, color={0,0,255}),
                Line(points={{-80,40},{-80,0}}, color={0,0,255}),
                Line(points={{-80,40},{-100,40}}, color={0,0,255}),
                Line(points={{-80,-40},{-100,-40}}, color={0,0,255}),
                Line(points={{100,40},{80,40}}, color={0,0,255}),
                Line(points={{80,40},{80,0}}, color={0,0,255}),
                Line(points={{80,0},{54,0}}, color={0,0,255}),
                Line(points={{80,0},{80,-40}}, color={0,0,255}),
                Line(points={{100,-40},{80,-40}}, color={0,0,255})}));

          ComplexLib.SinglePhase.Interfaces.PosComplexPin pin_p_1
            "Positive complex pin of primary winding"
                                           annotation (Placement(transformation(
                  extent={{-110,30},{-90,50}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.PosComplexPin pin_p_2
            "Positive complex pin of secondary winding"
                                           annotation (Placement(transformation(
                  extent={{90,30},{110,50}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n_1
            "Negative complex pin of primary winding"
                                           annotation (Placement(transformation(
                  extent={{-110,-50},{-90,-30}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n_2
            "Negative complex pin of secondary winding"
                                           annotation (Placement(transformation(
                  extent={{90,-50},{110,-30}}, rotation=0)));
          IdealTransformer2 idealTransformer(n=w1_w2, phase=phase)
            annotation (Placement(transformation(extent={{-6,-6},{26,26}},
                  rotation=0)));
        equation
          connect(resistor1.n, inductance1s.p)
                               annotation (Line(points={{-70,40},{-60,40}},
                color={0,0,255}));
          connect(inductance2s.p, resistor2.n)
                                   annotation (Line(points={{48,40},{60,40}},
                color={0,0,255}));
          connect(resistor2.p, pin_p_2)
                                   annotation (Line(points={{80,40},{100,40}},
                color={0,0,255}));
          connect(resistance_Fe.n, pin_n_1)
                                   annotation (Line(points={{-60,-10},{-60,-10},{-60,
                  -40},{-100,-40}},                     color={0,0,255}));
          connect(pin_p_1, resistor1.p)
                                 annotation (Line(points={{-100,40},{-90,40}},
                color={0,0,255}));
          connect(inductance2s.n, idealTransformer.p2)     annotation (Line(
                points={{28,40},{26,40},{26,18}}, color={0,0,255}));
          connect(idealTransformer.n2, pin_n_2)     annotation (Line(points={{26,2},{26,
                  -40},{100,-40}},           color={0,0,255}));
          connect(idealTransformer.n1, pin_n_1)     annotation (Line(points={{-6,2},{-6,
                  -40},{-100,-40}},       color={0,0,255}));
          connect(inductance_h.n, pin_n_1) annotation (Line(
              points={{-30,-10},{-30,-40},{-100,-40}},
              color={0,0,255},
              smooth=Smooth.None));
          connect(inductance1s.n, idealTransformer.p1) annotation (Line(
              points={{-40,40},{-6,40},{-6,18}},
              color={0,0,255},
              smooth=Smooth.None));
          connect(inductance1s.n, inductance_h.p) annotation (Line(
              points={{-40,40},{-30,40},{-30,10}},
              color={0,0,255},
              smooth=Smooth.None));
          connect(inductance1s.n, resistance_Fe.p) annotation (Line(
              points={{-40,40},{-30,40},{-30,20},{-60,20},{-60,10}},
              color={0,0,255},
              smooth=Smooth.None));
        end PowerTransformer;

        model VariableIdealTransformer
          "Ideal electrical transformer with variable parameters"
          extends ComplexLib.SinglePhase.Interfaces.TwoPort;
          Modelica.Blocks.Interfaces.RealInput n "Turns ratio via input signal"
            annotation (Placement(
                transformation(
                origin={0,110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput phase
            "Phase shift between primary and secondary part via input signal [rad]"
            annotation (Placement(
                transformation(
                origin={0,-110},
                extent={{-10,-10},{10,10}},
                rotation=90)));
          annotation (Documentation(info="<HTML>
<P>The VariableIdealTransformer is a two port with variable turns ratio <tt>n</tt>
and phase shift angle &phi;=<tt>phase</tt>. The left port voltage phasor <tt>v1</tt>,
the left port current phasor <tt>i1</tt>, the right port voltage phasor <tt>v2</tt>,
and the right port current phasor <tt>i2</tt> are connected
by the following relations:</p>
<pre>      v1 = n*v2*e^(j&phi;),
      i2 = n*i1*e^(j(&pi;+&phi;)), </pre>
<P>
where <tt>n</tt> is the ratio between primary and secondary winding and &phi; stands for
the phase shift angle <tt>phase</tt>. <br>
Both <tt>n</tt> and <tt>phase</tt> are specified by input signals.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the ratio of primary and secondary windings <tt>n</tt> may alter
only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the
phasor domain-based model.
<p>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>
"),         Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{34,-60},{73,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}}),
                Text(
                  extent={{-101,-41},{99,-99}},
                  lineColor={0,0,255},
                  textString="%name")}),
            Diagram(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}})}),
            Window(
              x=0.26,
              y=0.43,
              width=0.6,
              height=0.6));
        equation
          v2Re = v1/n*cos(phi_v1+phase);
          v2Im = v1/n*sin(phi_v1+phase);
          i2Re = i1*n*cos(phi_i1+Modelica.Constants.pi+phase);
          i2Im = i1*n*sin(phi_i1+Modelica.Constants.pi+phase);
        end VariableIdealTransformer;

        model VariableSimpleTransformer
          "Two coupled linear inductors with variable parameters"
          extends ComplexLib.SinglePhase.Interfaces.TwoPort;
          parameter SI.AngularFrequency omega=Constants.omega
            "AngularFrequency of the complete AC circuit";
          Modelica.Blocks.Interfaces.RealInput L1
            "Self inductance of first winding (main inductance plus stray inductance) [H]"
                                                  annotation (Placement(
                transformation(extent={{-140,-20},{-100,20}},rotation=0)));
          Modelica.Blocks.Interfaces.RealInput M "Mutual inductance [H]"
                                                 annotation (Placement(
                transformation(
                origin={0,120},
                extent={{-20,-20},{20,20}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput L2
            "Self inductance of second winding (main inductance plus stray inductance) [H]"
                                                  annotation (Placement(
                transformation(
                origin={120,0},
                extent={{-20,-20},{20,20}},
                rotation=180)));
          annotation (
            Documentation(info="<HTML>
<p>
The VariableSimpleTransformer component is a two-port with variable parameters
consisting of two ideal inductors (having no resistance).
Between these inductors, there exists a non-ideal coupling.
The left port voltage phasor <tt>v1</tt>, the left port current phasor
<tt>i1</tt>, the right port voltage phasor <tt>v2</tt>, and the right
port current phasor <tt>i2</tt> are connected by the following relations:
<pre>      v1 = j&omega;*(L1*i1+M*i2),
      v2 = j&omega;*(M*i1+L2*i2),</pre>
where <tt>M&sup2;&lt;L1*L2</tt> is always assumed.
The parameters <tt>L1</tt> and <tt>L1</tt> denote the primary and
secondary self inductances, respectively, while <tt>M</tt> is called
mutual (or coupling) inductance. <br>
The values of the inductances are specified by independent input signals.
</p>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, all inductances may alter only very slowly in comparison with both
the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is required that <tt>M&sup2; &lt; L1*L2</tt>, otherwise an assertion is raised.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>
"),         Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}}),
                Text(
                  extent={{-101,-41},{99,-99}},
                  lineColor={0,0,255},
                  textString="%name")}),
            Diagram(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Ellipse(extent={{-45,-50},{-20,-25}}),
                Ellipse(extent={{-45,-25},{-20,0}}),
                Ellipse(extent={{-45,0},{-20,25}}),
                Ellipse(extent={{-45,25},{-20,50}}),
                Rectangle(
                  extent={{-72,-60},{-33,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-100,50},{-32,50}}),
                Line(points={{-100,-50},{-32,-50}}),
                Ellipse(extent={{20,-50},{45,-25}}),
                Ellipse(extent={{20,-25},{45,0}}),
                Ellipse(extent={{20,0},{45,25}}),
                Ellipse(extent={{20,25},{45,50}}),
                Rectangle(
                  extent={{33,-60},{72,60}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{32,50},{100,50}}),
                Line(points={{32,-50},{100,-50}})}),
            Window(
              x=0.26,
              y=0.43,
              width=0.6,
              height=0.6));
        equation
          assert(M^2<L1*L2,"Square of mutual inductance M has to be smaller than the product of the two main inductances!");
          v1Re = -omega*(L1*i1Im+M*i2Im);
          v1Im =  omega*(L1*i1Re+M*i2Re);
          v2Re = -omega*(M*i1Im+L2*i2Im);
          v2Im =  omega*(M*i1Re+L2*i2Re);
        end VariableSimpleTransformer;

        model VariablePowerTransformer
          "Power transformer including iron losses with variable parameters"

          Modelica.Blocks.Interfaces.RealInput R1
            "Primary winding's resistance via input signal [Ohm]"
            annotation (Placement(
                transformation(
                origin={-80,110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput R2
            "Secondary winding's resistance via input signal [Ohm]"
            annotation (Placement(
                transformation(
                origin={80,110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput R_Fe
            "Resistance due to iron loss via input signal [Ohm]"
            annotation (Placement(
                transformation(
                origin={-40,-110},
                extent={{-10,-10},{10,10}},
                rotation=90)));
          Modelica.Blocks.Interfaces.RealInput L_h
            "Main inductance via input signal [H]"
            annotation (Placement(
                transformation(
                origin={-20,-110},
                extent={{-10,-10},{10,10}},
                rotation=90)));
          Modelica.Blocks.Interfaces.RealInput L_1s
            "Primary stray inductance via input signal [H]"
            annotation (Placement(
                transformation(
                origin={-40,110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput L_2s
            "Secondary stray inductance via input signal [H]"
            annotation (Placement(
                transformation(
                origin={40,110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Interfaces.RealInput w1_w2
            "Turns ratio via input signal"
            annotation (Placement(
                transformation(
                origin={40,-110},
                extent={{-10,-10},{10,10}},
                rotation=90)));
          Modelica.Blocks.Interfaces.RealInput phase
            "Phase shift via input signal [rad]"
            annotation (Placement(
                transformation(
                origin={20,-110},
                extent={{-10,-10},{10,10}},
                rotation=90)));
          ComplexLib.SinglePhase.Basic.VariableResistor resistor1
                             annotation (Placement(transformation(extent={{-90,
                    30},{-70,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.VariableResistor resistor2
                               annotation (Placement(transformation(extent={{80,
                    30},{60,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.VariableResistor resistance_Fe
                               annotation (Placement(transformation(
                origin={-40,10},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          ComplexLib.SinglePhase.Basic.VariableInductor inductance_h
                              annotation (Placement(transformation(
                origin={-20,10},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          ComplexLib.SinglePhase.Basic.VariableInductor inductance1s
                              annotation (Placement(transformation(extent={{-60,
                    30},{-40,50}}, rotation=0)));
          ComplexLib.SinglePhase.Basic.VariableInductor inductance2s
                                annotation (Placement(transformation(extent={{
                    46,30},{26,50}}, rotation=0)));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}),
                              graphics),
                               Icon(coordinateSystem(preserveAspectRatio=false,
                  extent={{-100,-100},{100,100}}), graphics={
                Ellipse(extent={{-54,30},{6,-30}}, lineColor={0,0,255}),
                Ellipse(extent={{-6,30},{54,-30}}, lineColor={0,0,255}),
                Line(points={{-54,0},{-80,0}}, color={0,0,255}),
                Line(points={{-80,0},{-80,-40}}, color={0,0,255}),
                Line(points={{-80,40},{-80,0}}, color={0,0,255}),
                Line(points={{-80,40},{-100,40}}, color={0,0,255}),
                Line(points={{-80,-40},{-100,-40}}, color={0,0,255}),
                Line(points={{100,40},{80,40}}, color={0,0,255}),
                Line(points={{80,40},{80,0}}, color={0,0,255}),
                Line(points={{80,0},{54,0}}, color={0,0,255}),
                Line(points={{80,0},{80,-40}}, color={0,0,255}),
                Line(points={{100,-40},{80,-40}}, color={0,0,255}),
                Text(
                  extent={{-101,-41},{99,-99}},
                  lineColor={0,0,255},
                  textString="%name")}),
            Documentation(info="<HTML>
<p>The VariablePowerTransformer is a two port with variable parameters.
The left port voltage <tt>v1</tt>, left port current <tt>i1</tt>,
right port voltage <tt>v2</tt> and right port current <tt>i2</tt> are connected by the following
relations:</p>
<pre>
      v1  = R1 *i1  + j&omega;L_1s *i1  + R_Fe*j&omega;L_h/(R_Fe + j&omega;L_h)*(i1 + i2')
      v2' = R2'*i2' + j&omega;L_2s'*i2' + R_Fe*j&omega;L_h/(R_Fe + j&omega;L_h)*(i1 + i2')</pre>
<p>
<dt>
with:</p>
<pre>      v2'=w1_w2*v2;  i2'=i2/w1_w2;  L_2s'=(w1_w2)^2*L_2s;  R2'=(w1_w2)^2*R2</pre>
<p>
<dt>
This is the common way to describe power transformers.<br>
All parameters are specified by independent input signals.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, all input signals may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>"),  DymolaStoredErrors);

          ComplexLib.SinglePhase.Interfaces.PosComplexPin pin_p_1
            "Positive complex pin of primary winding"
                                           annotation (Placement(transformation(
                  extent={{-110,30},{-90,50}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.PosComplexPin pin_p_2
            "Positive complex pin of secondary winding"
                                           annotation (Placement(transformation(
                  extent={{90,30},{110,50}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n_1
            "Negative complex pin of primary winding"
                                           annotation (Placement(transformation(
                  extent={{-110,-50},{-90,-30}}, rotation=0)));
          ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n_2
            "Positive complex pin of secondary winding"
                                           annotation (Placement(transformation(
                  extent={{90,-50},{110,-30}}, rotation=0)));
          VariableIdealTransformer idealTransformer
            annotation (Placement(transformation(extent={{0,0},{20,20}},
                  rotation=0)));
        equation
          connect(R1, resistor1.R) annotation (Line(points={{-80,110},{-80,52}},
                color={0,0,127}));
          connect(L_1s, inductance1s.L) annotation (Line(points={{-40,110},{-40,60},{
                  -50,60},{-50,52}},      color={0,0,127}));
          connect(L_2s, inductance2s.L) annotation (Line(points={{40,110},{40,60},{36,
                  60},{36,52}},     color={0,0,127}));
          connect(R2, resistor2.R) annotation (Line(points={{80,110},{80,60},{70,60},{
                  70,52}},        color={0,0,127}));
          connect(L_h, inductance_h.L) annotation (Line(points={{-20,-110},{-20,
                  -70},{-4,-70},{-4,10},{-8,10}},
                                            color={0,0,127}));
          connect(R_Fe, resistance_Fe.R) annotation (Line(points={{-40,-110},{
                  -40,-70},{-24,-70},{-24,-28},{-24,10},{-28,10}},
                                                          color={0,0,127}));
          connect(w1_w2, idealTransformer.n) annotation (Line(
              points={{40,-110},{40,28},{10,28},{10,21}},
              color={0,0,127},
              smooth=Smooth.None));
          connect(phase, idealTransformer.phase)     annotation (Line(points={{20,-110},
                  {20,-70},{10,-70},{10,-1}},        color={0,0,127}));
          connect(resistor1.n, inductance1s.p)
                               annotation (Line(points={{-70,40},{-60,40}},
                color={0,0,255}));
          connect(inductance2s.p, resistor2.n)
                                   annotation (Line(points={{46,40},{60,40}},
                color={0,0,255}));
          connect(resistor2.p, pin_p_2)
                                   annotation (Line(points={{80,40},{100,40}},
                color={0,0,255}));
          connect(resistance_Fe.n, pin_n_1)
                                   annotation (Line(points={{-40,0},{-36,0},{
                  -36,0},{-30,0},{-30,-40},{-100,-40}}, color={0,0,255}));
          connect(pin_p_1, resistor1.p)
                                 annotation (Line(points={{-100,40},{-90,40}},
                color={0,0,255}));
          connect(resistance_Fe.n, inductance_h.n) annotation (Line(points={{-40,0},
                  {-20,4.87687e-022},{-20,0}},        color={0,0,255}));
          connect(resistance_Fe.p, inductance_h.p)
            annotation (Line(points={{-40,20},{-20,20}}, color={0,0,255}));
          connect(inductance2s.n, idealTransformer.p2)     annotation (Line(
                points={{26,40},{20,40},{20,15}}, color={0,0,255}));
          connect(idealTransformer.n2, pin_n_2)     annotation (Line(points={{20,5},{20,
                  -40},{100,-40}},           color={0,0,255}));
          connect(idealTransformer.n1, pin_n_1)     annotation (Line(points={{0,5},{0,
                  -40},{-100,-40}},       color={0,0,255}));
          connect(inductance1s.n, resistance_Fe.p) annotation (Line(points={{
                  -40,40},{-30,40},{-30,20},{-40,20}}, color={0,0,255}));
          connect(resistance_Fe.p, idealTransformer.p1)     annotation (Line(
                points={{-40,20},{-30,20},{-30,40},{0,40},{0,15}}, color={0,0,
                  255}));
          connect(idealTransformer.n1, inductance_h.n)     annotation (Line(
                points={{0,5},{0,-40},{-30,-40},{-30,0},{-20,0}}, color={0,0,
                  255}));
          connect(inductance_h.n, pin_n_1) annotation (Line(points={{-20,0},{
                  -20,0},{-30,0},{-30,-40},{-100,-40}},         color={0,0,255}));
          connect(idealTransformer.p1, inductance_h.p)     annotation (Line(
                points={{0,15},{-5.55112e-016,15},{0,40},{-30,40},{-30,20},{-20,
                  20}}, color={0,0,255}));
          connect(idealTransformer.p1, inductance1s.n)     annotation (Line(
                points={{0,15},{-5.55112e-016,15},{0,40},{-40,40}}, color={0,0,
                  255}));
          connect(inductance_h.p, inductance1s.n) annotation (Line(points={{-20,20},
                  {-30,20},{-30,40},{-40,40}},     color={0,0,255}));
        //  connect(idealTransformer.n2, Ground1.p)
        //      annotation (Line(points={{20,0},{20,-52}}, color={0,0,255}));
        end VariablePowerTransformer;
      end Transformers;
    end Basic;

    package Interfaces
      "Interfaces for electrical phasor domain-based single-phase components"

       annotation (
          Documentation(info="<HTML>
<P>
This package contains connectors and interfaces (partial models) for
electrical components for phasor analysis:
<ul>
<li>ComplexPin</li>
<li>PosComplexPin</li>
<li>NegComplexPin</li>
<li>TwoPin</li>
<li>OnePort</li>
<li>OnePortSrc</li>
<li>FourPin</li>
<li>TwoPort</li>
</ul>
</P>
</HTML>
"));
    connector ComplexPin
        "Pin of an electrical component described within phasor domain"

      annotation (Documentation(info="
<html>
<p>
  ComplexPin is a pin of a component which is used for phasor analysis.
  Therefore, voltage phasor (potential variable) and current phasor
  (flow variable) are used instead of instantaneous values of
  voltage and current, respectively.<br>
  Each phasor consists of its real and its imaginary part.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
      SI.Voltage vRe "Real part of voltage phasor";
      SI.Voltage vIm "Imaginary part of voltage phasor";
      flow SI.Current iRe "Real part of current phasor";
      flow SI.Current iIm "Imaginary part of current phasor";
    end ComplexPin;

    connector PosComplexPin "Positive pin for phasor domain"
      extends ComplexPin;
      annotation (defaultComponentName="pin",
      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                  100}}), graphics={Polygon(
                points={{-40,100},{-100,40},{-100,-40},{-40,-100},{40,-100},{
                    100,-40},{100,40},{40,100},{-40,100}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}),
      Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                  100,100}}), graphics={Text(
                extent={{-200,110},{0,50}},
                lineColor={0,0,255},
                textString="%name"), Polygon(
                points={{-10,30},{-30,10},{-30,-10},{-10,-30},{10,-30},{30,-10},
                    {30,10},{10,30},{-10,30}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}),
        Documentation(info="<html>
<p>
Connectors PosComplexPin and NegComplexPin are nearly identical.
The only difference is that the icons are different in order to identify
more easily the pins of a component.
Usually, connector PosComplexPin is used for the positive pin of an electrical component.
</p>
<p>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br><br>
  Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
    end PosComplexPin;

    connector NegComplexPin "Negative pin for phasor domain"
      extends ComplexPin;
      annotation (defaultComponentName="pin_n",
        Documentation(info="<html>
<p>
Connectors PosComplexPin and NegComplexPin are nearly identical.
The only difference is that the icons are different in order to identify
more easily the pins of a component.
Usually, connector NegComplexPin is used for the negative pin of an electrical component.
</p>
<p>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br><br>
  Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),
        Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                  100,100}}), graphics={Polygon(
                points={{-40,100},{-100,40},{-100,-40},{-40,-100},{40,-100},{
                    100,-40},{100,40},{40,100},{-40,100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid)}),
        Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={Text(extent={{0,110},{200,50}},
                  textString="%name"), Polygon(
                points={{-10,30},{-30,10},{-30,-10},{-10,-30},{10,-30},{30,-10},
                    {30,10},{10,30},{-10,30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid)}),
        Terminal(Rectangle(extent=[-100, 100; 100, -100], style(color=3))));
    end NegComplexPin;

    partial model TwoPin
        "Component having two ComplexPins p and n (one port) and NOT using current phasor balance"

      annotation (
        Documentation(info="<HTML>
<P>
Superclass of elements which have one port i.e. two electrical pins of
type ComplexPin.
No inner current balance between the two complex pins is used.
Hence, class TwoPin is suitable for building internal electrical circuits
consisting of components extended from superclasses OnePort or TwoPort.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),     Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics),
        Window(
          x=0.33,
          y=0.04,
          width=0.63,
          height=0.67),
        Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics));
      SI.Voltage v "Voltage phasor";
      SI.Voltage vRe "Active part of voltage phasor";
      SI.Voltage vIm "Reactive part of voltage phasor";
      SI.Current i "Current phasor";
      SI.Current iRe "Active part of current phasor";
      SI.Current iIm "Reactive part of current phasor";
      PosComplexPin p
          "Positive complex pin (potential p.v > n.v for positive voltage drop v)"
                    annotation (Placement(transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
      NegComplexPin n "Negative complex pin" annotation (Placement(transformation(extent={{110,-10},{
                    90,10}}, rotation=0)));
      SI.Angle phi "Angle between voltage and current phasors";
      SI.Angle phi_v "Angle of voltage phasor";
      SI.Angle phi_i "Angle of current phasor";
      Modelica.Blocks.Interfaces.RealOutput activePwr
          "Active power of component";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr
          "Reactive power of component";
      ComplexLib.Interfaces.ComplexOutput complexPwr
          "Complex value of power of component"
        annotation (Placement(transformation(extent={{100,40},{120,60}},
                rotation=0)));
    equation
      vRe = p.vRe - n.vRe;
      vIm = p.vIm - n.vIm;
      v = sqrt((vRe)^2+(vIm)^2);
      iRe = p.iRe;
      iIm = p.iIm;
      i = sqrt((iRe)^2+(iIm)^2);
        phi_v = ComplexLib.Math.atan2(vIm, vRe);
        phi_i = ComplexLib.Math.atan2(iIm, iRe);
      phi = phi_v-phi_i;
      activePwr = v*i*cos(phi);
      reactivePwr = v*i*sin(phi);
      complexPwr.real = activePwr;
      complexPwr.im = reactivePwr;
    end TwoPin;

    partial model OnePort
        "Passive component having two ComplexPins p and n (one port) and using current phasor balance"

      annotation (
        Documentation(info="<HTML>
<P>
Superclass of elements which have one port i.e. two electrical pins of
type ComplexPin.
The identity of the phasor of the current flowing into pin <tt>p</tt>
and the phasor of the current flowing out of pin <tt>n</tt> is forced
by internal current balance.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),     Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-110,20},{-85,20}}, color={160,160,164}),
              Polygon(
                points={{-95,23},{-85,20},{-95,17},{-95,23}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{90,20},{115,20}}, color={160,160,164}),
              Line(points={{-125,0},{-115,0}}, color={160,160,164}),
              Line(points={{-120,-5},{-120,5}}, color={160,160,164}),
              Text(
                extent={{-110,25},{-90,45}},
                lineColor={160,160,164},
                textString="i"),
              Polygon(
                points={{105,23},{115,20},{105,17},{105,23}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{115,0},{125,0}}, color={160,160,164}),
              Text(
                extent={{90,45},{110,25}},
                lineColor={160,160,164},
                textString="i")}),
        Window(
          x=0.33,
          y=0.04,
          width=0.63,
          height=0.67),
        Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics));
      SI.Voltage v "Voltage phasor";
      SI.Voltage vRe "Active part of voltage phasor";
      SI.Voltage vIm "Reactive part of voltage phasor";
      SI.Current i "Current phasor";
      SI.Current iRe "Active part of current phasor";
      SI.Current iIm "Reactive part of current phasor";
      PosComplexPin p
          "Positive complex pin (potential p.v > n.v for positive voltage drop v)"
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
      NegComplexPin n "Negative complex pin"
        annotation (Placement(transformation(extent={{110,-10},{90,10}}, rotation=0)));
      SI.Angle phi "Angle between voltage and current phasors";
      SI.Angle phi_v "Angle of voltage phasor";
      SI.Angle phi_i "Angle of current phasor";
      Modelica.Blocks.Interfaces.RealOutput activePwr
          "Active power of component";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr
          "Reactive power of component";
      ComplexLib.Interfaces.ComplexOutput complexPwr
          "Complex value of power of component"
        annotation (Placement(transformation(extent={{100,40},{120,60}},
                rotation=0)));
    equation
      vRe = p.vRe - n.vRe;
      vIm = p.vIm - n.vIm;
      v = sqrt((vRe)^2+(vIm)^2);
      0 = p.iRe + n.iRe;
      0 = p.iIm + n.iIm;
      iRe = p.iRe;
      iIm = p.iIm;
      i = sqrt((iRe)^2+(iIm)^2);
        phi_v = ComplexLib.Math.atan2(vIm, vRe);
        phi_i = ComplexLib.Math.atan2(iIm, iRe);
      phi = phi_v-phi_i;
      activePwr = v*i*cos(phi);
      reactivePwr = v*i*sin(phi);
      complexPwr.real = activePwr;
      complexPwr.im = reactivePwr;
    end OnePort;

    partial model OnePortSrc
        "Source component having two ComplexPins p and n (one port) and using current phasor balance"

      annotation (
        Documentation(info="<HTML>
<P>
Superclass of elements which have one port i.e.two electrical pins of
type ComplexPin.
The identity of the phasor of the current flowing into pin <tt>p</tt>
and the phasor of the current flowing out of pin <tt>n</tt> is forced
by internal current balance.<br><br>
The only differences to class OnePort are the calculations of the
internal current phasor as well as the values of active and reactive
power.
Hence, class OnePortSrc shall only be used to build source components
like voltage sources or current generators.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),     Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics={
              Line(points={{-110,20},{-85,20}}, color={160,160,164}),
              Polygon(
                points={{-95,23},{-85,20},{-95,17},{-95,23}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{90,20},{115,20}}, color={160,160,164}),
              Line(points={{-125,0},{-115,0}}, color={160,160,164}),
              Line(points={{-120,-5},{-120,5}}, color={160,160,164}),
              Text(
                extent={{-110,25},{-90,45}},
                lineColor={160,160,164},
                textString="i"),
              Polygon(
                points={{105,23},{115,20},{105,17},{105,23}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{115,0},{125,0}}, color={160,160,164}),
              Text(
                extent={{90,45},{110,25}},
                lineColor={160,160,164},
                textString="i")}),
        Window(
          x=0.33,
          y=0.04,
          width=0.63,
          height=0.67),
          Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={2,2}), graphics));
      SI.Voltage v "Voltage phasor";
      SI.Voltage vRe "Active part of voltage phasor";
      SI.Voltage vIm "Reactive part of voltage phasor";
      SI.Current i "Current phasor";
      SI.Current iRe "Active part of current phasor";
      SI.Current iIm "Reactive part of current phasor";
      PosComplexPin p
          "Positive complex pin (potential p.v > n.v for positive voltage drop v)"
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
      NegComplexPin n "Negative complex pin"
        annotation (Placement(transformation(extent={{110,-10},{90,10}}, rotation=0)));
      SI.Angle phi "Angle between voltage and current phasors";
      SI.Angle phi_v "Angle of voltage phasor";
      SI.Angle phi_i "Angle of current phasor";
      Modelica.Blocks.Interfaces.RealOutput activePwr
          "Active power of component";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr
          "Reactive power of component";
      ComplexLib.Interfaces.ComplexOutput complexPwr
          "Complex value of power of component"
        annotation (Placement(transformation(extent={{100,40},{120,60}}, rotation=0)));
    equation
      vRe = p.vRe - n.vRe;
      vIm = p.vIm - n.vIm;
      v = sqrt((vRe)^2+(vIm)^2);
      0 = p.iRe + n.iRe;
      0 = p.iIm + n.iIm;
      iRe = n.iRe;
      iIm = n.iIm;
      i = sqrt((iRe)^2+(iIm)^2);
        phi_v = ComplexLib.Math.atan2(vIm, vRe);
        phi_i = ComplexLib.Math.atan2(iIm, iRe);
      phi = phi_v-phi_i;
      // power values according to the convention for passive components
      activePwr = -v*i*cos(phi);
      reactivePwr = -v*i*sin(phi);
      complexPwr.real = activePwr;
      complexPwr.im = reactivePwr;
    end OnePortSrc;

    partial model FourPin
        "Component having four ComplexPins p1, p2, n1, n2 (two ports) and NOT using current phasor balance"

      annotation (
        Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
        Window(
          x=0.16,
          y=0.12,
          width=0.6,
          height=0.6),
        Documentation(info="<html>
<P>
Superclass of elements which have two ports i.e. four electrical pins
of type ComplexPin.
No inner current balance between the four complex pins is used.
Hence, class FourPin is suitable for building internal electrical
circuits consisting of components extended from superclasses OnePort
or TwoPort.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics),
        DymolaStoredErrors);
      SI.Voltage v1 "Voltage phasor of port no.1";
      SI.Voltage v1Re "Active part of voltage phasor of port no.1";
      SI.Voltage v1Im "Reactive part of voltage phasor of port no.1";
      SI.Voltage v2 "Voltage phasor of port no.2";
      SI.Voltage v2Re "Active part of voltage phasor of port no.2";
      SI.Voltage v2Im "Reactive part of voltage phasor of port no.2";
      SI.Current i1 "Current phasor of port no.1";
      SI.Current i1Re "Active part of current phasor of port no.1";
      SI.Current i1Im "Reactive part of current phasor of port no.1";
      SI.Current i2 "Current phasor of port no.2";
      SI.Current i2Re "Active part of current phasor of port no.2";
      SI.Current i2Im "Reactive part of current phasor of port no.2";
      PosComplexPin p1 "Positive complex pin no.1"
        annotation (Placement(transformation(extent={{-110,40},{-90,60}}, rotation=0)));
      PosComplexPin p2 "Positive complex pin no.2"
        annotation (Placement(transformation(extent={{110,40},{90,60}}, rotation=0)));
      NegComplexPin n1 "Negative complex pin no.1"
        annotation (Placement(transformation(extent={{-90,-60},{-110,-40}}, rotation=0)));
      NegComplexPin n2 "Negative complex pin no.2"
        annotation (Placement(transformation(extent={{90,-60},{110,-40}}, rotation=0)));
      SI.Angle phi1 "Angle between voltage and current phasors of port no.1";
      SI.Angle phi_v1 "Angle of voltage phasor of port no.1";
      SI.Angle phi_i1 "Angle of current phasor of port no.1";
      SI.Angle phi2 "Angle between voltage and current phasors of port no.2";
      SI.Angle phi_v2 "Angle of voltage phasor of port no.2";
      SI.Angle phi_i2 "Angle of current phasor of port no.2";
      Modelica.Blocks.Interfaces.RealOutput activePwr1
          "Active power of port no.1";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr1
          "Reactive power of port no.1";
      Modelica.Blocks.Interfaces.RealOutput activePwr2
          "Active power of port no.2";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr2
          "Reactive power of port no.2";
      ComplexLib.Interfaces.ComplexOutput complexPwr1
          "Complex value of power of port no.1"
        annotation (Placement(transformation(origin={-110,85},
          extent={{-10,-10},{10,10}},rotation=180)));
      ComplexLib.Interfaces.ComplexOutput complexPwr2
          "Complex value of power of port no.2"
        annotation (Placement(transformation(extent={{100,75},{120,95}},
          rotation=0)));
    equation
      v1Re = p1.vRe - n1.vRe;
      v1Im = p1.vIm - n1.vIm;
      v2Re = p2.vRe - n2.vRe;
      v2Im = p2.vIm - n2.vIm;
      v1 = sqrt(v1Re^2+v1Im^2);
      v2 = sqrt(v2Re^2+v2Im^2);
      i1Re = p1.iRe;
      i1Im = p1.iIm;
      i2Re = p2.iRe;
      i2Im = p2.iIm;
      i1 = sqrt(i1Re^2+i1Im^2);
      i2 = sqrt(i2Re^2+i2Im^2);
        phi_v1 = ComplexLib.Math.atan2(v1Im, v1Re);
        phi_i1 = ComplexLib.Math.atan2(i1Im, i1Re);
      phi1 = phi_v1-phi_i1;
        phi_v2 = ComplexLib.Math.atan2(v2Im, v2Re);
        phi_i2 = ComplexLib.Math.atan2(i2Im, i2Re);
      phi2 = phi_v2-phi_i2;
      activePwr1 = v1*i1*cos(phi1);
      reactivePwr1 = v1*i1*sin(phi1);
      activePwr2 = v2*i2*cos(phi2);
      reactivePwr2 = v2*i2*sin(phi2);
      complexPwr1.real = activePwr1;
      complexPwr1.im = reactivePwr1;
      complexPwr2.real = activePwr2;
      complexPwr2.im = reactivePwr2;
    end FourPin;

    partial model TwoPort
        "Component having four ComplexPins p1, p2, n1, n2 (two ports) and using current phasor balance"

      annotation (
        Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Polygon(
                points={{-120,53},{-110,50},{-120,47},{-120,53}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{-136,50},{-111,50}}, color={160,160,164}),
              Polygon(
                points={{127,-47},{137,-50},{127,-53},{127,-47}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Line(points={{111,-50},{136,-50}}, color={160,160,164}),
              Text(
                extent={{112,-44},{128,-29}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid,
                textString="i2"),
              Text(
                extent={{118,52},{135,67}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={160,160,164},
                textString="i2"),
              Polygon(
                points={{120,53},{110,50},{120,47},{120,53}},
                lineColor={160,160,164},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={160,160,164}),
              Line(points={{111,50},{136,50}}, color={160,160,164}),
              Line(points={{-136,-49},{-111,-49}}, color={160,160,164}),
              Polygon(
                points={{-126,-46},{-136,-49},{-126,-52},{-126,-46}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-127,-46},{-110,-31}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid,
                textString="i1"),
              Text(
                extent={{-136,53},{-119,68}},
                lineColor={160,160,164},
                fillColor={160,160,164},
                fillPattern=FillPattern.Solid,
                textString="i1")}),
        Window(
          x=0.16,
          y=0.12,
          width=0.6,
          height=0.6),
        Documentation(info="<html>
<P>
Superclass of elements which have two ports i.e. four electrical pins
of type ComplexPin.
The identity of the phasor of the current flowing into pin <tt>p1</tt>
and the phasor of the current flowing out of pin <tt>n1</tt> is forced
by internal current balance.
The same holds for the pins <tt>p2</tt> and <tt>n2</tt>.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics));
      SI.Voltage v1 "Voltage phasor of port no.1";
      SI.Voltage v1Re "Active part of voltage phasor of port no.1";
      SI.Voltage v1Im "Reactive part of voltage phasor of port no.1";
      SI.Voltage v2 "Voltage phasor of port no.2";
      SI.Voltage v2Re "Active part of voltage phasor of port no.2";
      SI.Voltage v2Im "Reactive part of voltage phasor of port no.2";
      SI.Current i1 "Current phasor of port no.1";
      SI.Current i1Re "Active part of current phasor of port no.1";
      SI.Current i1Im "Reactive part of current phasor of port no.1";
      SI.Current i2 "Current phasor of port no.2";
      SI.Current i2Re "Active part of current phasor of port no.2";
      SI.Current i2Im "Reactive part of current phasor of port no.2";
      PosComplexPin p1 "Positive complex pin no.1"
        annotation (Placement(transformation(extent={{-110,40},{-90,60}}, rotation=0)));
      PosComplexPin p2 "Positive complex pin no.2"
        annotation (Placement(transformation(extent={{110,40},{90,60}}, rotation=0)));
      NegComplexPin n1 "Negative complex pin no.1"
        annotation (Placement(transformation(extent={{-90,-60},{-110,-40}}, rotation=0)));
      NegComplexPin n2 "Negative complex pin no.2"
        annotation (Placement(transformation(extent={{90,-60},{110,-40}}, rotation=0)));
      SI.Angle phi1 "Angle between voltage and current phasors of port no.1";
      SI.Angle phi_v1 "Angle of voltage phasor of port no.1";
      SI.Angle phi_i1 "Angle of current phasor of port no.1";
      SI.Angle phi2 "Angle between voltage and current phasors of port no.2";
      SI.Angle phi_v2 "Angle of voltage phasor of port no.2";
      SI.Angle phi_i2 "Angle of current phasor of port no.2";
      Modelica.Blocks.Interfaces.RealOutput activePwr1
          "Active power of port no.1";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr1
          "Reactive power of port no.1";
      Modelica.Blocks.Interfaces.RealOutput activePwr2
          "Active power of port no.2";
      Modelica.Blocks.Interfaces.RealOutput reactivePwr2
          "Reactive power of port no.2";
      ComplexLib.Interfaces.ComplexOutput complexPwr1
          "Complex value of power of port no.1"
        annotation (Placement(transformation(origin={-110,85},
          extent={{-10,-10},{10,10}},rotation=180)));
      ComplexLib.Interfaces.ComplexOutput complexPwr2
          "Complex value of power of port no.2"
        annotation (Placement(transformation(extent={{100,75},{120,95}},
          rotation=0)));
    equation
      v1Re = p1.vRe - n1.vRe;
      v1Im = p1.vIm - n1.vIm;
      v2Re = p2.vRe - n2.vRe;
      v2Im = p2.vIm - n2.vIm;
      v1 = sqrt(v1Re^2+v1Im^2);
      v2 = sqrt(v2Re^2+v2Im^2);
      0 = p1.iRe + n1.iRe;
      0 = p1.iIm + n1.iIm;
      0 = p2.iRe + n2.iRe;
      0 = p2.iIm + n2.iIm;
      i1Re = p1.iRe;
      i1Im = p1.iIm;
      i2Re = p2.iRe;
      i2Im = p2.iIm;
      i1 = sqrt(i1Re^2+i1Im^2);
      i2 = sqrt(i2Re^2+i2Im^2);
        phi_v1 = ComplexLib.Math.atan2(v1Im, v1Re);
        phi_i1 = ComplexLib.Math.atan2(i1Im, i1Re);
      phi1 = phi_v1-phi_i1;
        phi_v2 = ComplexLib.Math.atan2(v2Im, v2Re);
        phi_i2 = ComplexLib.Math.atan2(i2Im, i2Re);
      phi2 = phi_v2-phi_i2;
      activePwr1 = v1*i1*cos(phi1);
      reactivePwr1 = v1*i1*sin(phi1);
      activePwr2 = v2*i2*cos(phi2);
      reactivePwr2 = v2*i2*sin(phi2);
      complexPwr1.real = activePwr1;
      complexPwr1.im = reactivePwr1;
      complexPwr2.real = activePwr2;
      complexPwr2.im = reactivePwr2;
    end TwoPort;
    end Interfaces;

   package Sensors
      "Single-phase sensors for electrical circuits described within phasor domain"
      annotation (
         Documentation(info="<HTML>
<P>
This package contains sensors for electrical components for phasor
analysis:
<ul>
<li>PotentialSensor</li>
<li>VoltageSensor</li>
<li>CurrentSensor</li>
<li>PQ-sensor</li>
<li>PQ-sensor using signals</li>
</ul>
</P>
</HTML>
"));
   model PotentialSensor "Absolute voltage sensor"
     extends Modelica.Icons.RotationalSensor;
      annotation (Diagram(graphics={
              Line(points={{-70,0},{-100,0}}),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Line(points={{0,70},{0,100}}, color={0,0,0})}),
       Window(
         x=0.33,
         y=0.04,
         width=0.63,
         height=0.67),
        Icon(graphics={
              Text(
                extent={{-26,-12},{26,-74}},
                lineColor={0,0,0},
                textString="V"),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Text(
                extent={{-150,64},{150,104}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{0,70},{0,100}}, color={0,0,0}),
              Line(points={{-70,0},{-100,0}})}),
        Documentation(info="<html>
<P>
The potential sensor is a one pin-component. It yields length (usually the rms value)
and angle of potential phasor (i.e. of absolute voltage phasor).
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>
"));
     SI.Voltage v "Voltage phasor";
     SI.Voltage vRe "Active part of voltage phasor";
     SI.Voltage vIm "Reactive part of voltage phasor";
     ComplexLib.SinglePhase.Interfaces.PosComplexPin p "Complex pin"
                                              annotation (Placement(transformation(extent={{
                  -110,-10},{-90,10}}, rotation=0)));
     SI.Angle phi_v "Angle of voltage phasor";
     Modelica.Blocks.Interfaces.RealOutput potential_eff
          "Potential phasor's rms value"
                            annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=90)));
     Modelica.Blocks.Interfaces.RealOutput phi_potential
          "Potential phasor's angle"
                            annotation (Placement(transformation(
              origin={0,-120},
              extent={{20,-20},{-20,20}},
              rotation=90)));
   equation
     vRe = p.vRe;
     vIm = p.vIm;
     v = sqrt((vRe)^2+(vIm)^2);
        phi_v = ComplexLib.Math.atan2(vIm, vRe);
     // sensor specification
     p.iRe = 0;
     p.iIm = 0;
     potential_eff = v;
     phi_potential = phi_v;
   end PotentialSensor;

   model VoltageSensor "Voltage sensor"
     extends Modelica.Icons.RotationalSensor;
      annotation (Diagram(graphics={
              Line(points={{-70,0},{-100,0}}),
              Line(points={{100,0},{70,0}}),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Line(points={{0,70},{0,100}}, color={0,0,0})}),
       Window(
         x=0.33,
         y=0.04,
         width=0.63,
         height=0.67),
        Icon(graphics={
              Text(
                extent={{-26,-12},{26,-74}},
                lineColor={0,0,0},
                textString="V"),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Line(points={{100,0},{70,0}}),
              Text(
                extent={{-150,64},{150,104}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{0,70},{0,100}}, color={0,0,0}),
              Line(points={{-70,0},{-100,0}})}),
        Documentation(info="<html>
<P>
The voltage sensor is a one port-component (having two pins and considering current phasor balance).
It yields length (usually the rms value) and angle of voltage phasor <tt>v</tt> which is measured from
pin <tt>p</tt> to pin <tt>n</tt> (i.e. <tt>v = p.v-n.v</tt>).
</P>
<p>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br><br>
  Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>
"));
     SI.Voltage v "Voltage phasor";
     SI.Voltage vRe "Active part of voltage phasor";
     SI.Voltage vIm "Reactive part of voltage phasor";
     ComplexLib.SinglePhase.Interfaces.PosComplexPin p "Positive complex pin"
                              annotation (Placement(transformation(extent={{
                  -110,-10},{-90,10}}, rotation=0)));
     ComplexLib.SinglePhase.Interfaces.NegComplexPin n "Negative complex pin"
                              annotation (Placement(transformation(extent={{
                  110,-10},{90,10}}, rotation=0)));
     SI.Angle phi_v "Angle of voltage phasor";
     Modelica.Blocks.Interfaces.RealOutput voltage_eff
          "Voltage phasor's rms value"
       annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=90)));
     Modelica.Blocks.Interfaces.RealOutput phi_voltage "Voltage phasor's angle"
                                annotation (Placement(transformation(
              origin={0,-120},
              extent={{20,-20},{-20,20}},
              rotation=90)));
   equation
     vRe = p.vRe - n.vRe;
     vIm = p.vIm - n.vIm;
     v = sqrt((vRe)^2+(vIm)^2);
     0 = p.iRe + n.iRe;
     0 = p.iIm + n.iIm;
        phi_v = ComplexLib.Math.atan2(vIm, vRe);
     // sensor specification
     p.iRe = 0;
     p.iIm = 0;
     voltage_eff = v;
     phi_voltage = phi_v;
   end VoltageSensor;

    model CurrentSensor "Current sensor"
      extends Modelica.Icons.RotationalSensor;
       annotation (Diagram(graphics={
              Line(points={{-70,0},{-100,0}}),
              Line(points={{100,0},{70,0}}),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Line(points={{0,70},{0,100}}, color={0,0,0})}),
        Window(
          x=0.33,
          y=0.04,
          width=0.63,
          height=0.67),
         Icon(graphics={
              Text(
                extent={{-26,-12},{26,-74}},
                lineColor={0,0,0},
                textString="A"),
              Line(points={{0,-100},{0,-70}}, color={0,0,0}),
              Line(points={{100,0},{70,0}}),
              Text(
                extent={{-150,64},{150,104}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{0,70},{0,100}}, color={0,0,0}),
              Line(points={{-70,0},{-100,0}})}),
         Documentation(info="<html>
<P>
The current sensor is a one port-component (having two pins and considering current phasor balance).
It yields length (usually the rms value) and angle of current phasor <tt>i</tt> flowing from
pin <tt>p</tt> to pin <tt>n</tt> (<tt>i = p.i = -n.i</tt>).
</P>
<p>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br><br>
  Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>
"));
      SI.Current i "Current phasor";
      SI.Current iRe "Active part of current phasor";
      SI.Current iIm "Reactive part of current phasor";
      ComplexLib.SinglePhase.Interfaces.PosComplexPin p "Positive complex pin"
        annotation (Placement(transformation(extent={{
                  -110,-10},{-90,10}}, rotation=0)));
      ComplexLib.SinglePhase.Interfaces.NegComplexPin n "Negatve complex pin"
        annotation (Placement(transformation(extent={{
                  110,-10},{90,10}}, rotation=0)));
      SI.Angle phi_i "Angle of current phasor";
      Modelica.Blocks.Interfaces.RealOutput current_eff
          "Current phasor's rms value"
        annotation (Placement(transformation(
              origin={0,120},
              extent={{-20,-20},{20,20}},
              rotation=90)));
      Modelica.Blocks.Interfaces.RealOutput phi_current
          "Current phasor's angle"
        annotation (Placement(transformation(
              origin={0,-120},
              extent={{20,-20},{-20,20}},
              rotation=90)));
    equation
      0 = p.iRe + n.iRe;
      0 = p.iIm + n.iIm;
      iRe = p.iRe;
      iIm = p.iIm;
      i = sqrt((iRe)^2+(iIm)^2);
        phi_i = ComplexLib.Math.atan2(iIm, iRe);
      // sensor specification
      p.vRe - n.vRe = 0;
      p.vIm - n.vIm = 0;
      current_eff = i;
      phi_current=phi_i;
    end CurrentSensor;

    model PQ_sensor "Power quality sensor"
      extends Modelica.Icons.RotationalSensor;
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                          graphics),
        Icon(graphics={Text(
                extent={{-46,-24},{48,-54}},
                lineColor={0,0,0},
                textString="PQ_Sensor"), Text(
                extent={{-100,64},{100,104}},
                lineColor={0,0,255},
                textString="%name")}),
        Documentation(info="<html>
<p>
The PQ_sensor (or power quality sensor) yields the quantities active (or real) power,
reactive (or idle) power, the power quality coefficient <tt>cos(phi)</tt> and
the power phasor angle <tt>phi</tt>. To this end, the voltage drop between
pin <tt>p</tt> and pin <tt>n_voltage</tt> as well as the current flowing from
pin <tt>p</tt> to pin <tt>n_current</tt> are measured.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
      ComplexLib.SinglePhase.Interfaces.PosComplexPin p "Positive complex pin"
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}},rotation=0)));
      ComplexLib.SinglePhase.Interfaces.NegComplexPin n_voltage
          "Negative complex pin for measuring voltage"
        annotation (Placement(transformation(extent={{-30,-110},{-10,-90}}, rotation=0)));
      ComplexLib.SinglePhase.Interfaces.NegComplexPin n_current
          "Negative complex pin for measuring current"
        annotation (Placement(transformation(extent={{90,-10},{110,10}},rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput active_power "Active power"
        annotation (Placement(
              transformation(extent={{-20,-20},{20,20}},rotation=90,
            origin={-60,120})));
      Modelica.Blocks.Interfaces.RealOutput reactive_power "Reactive power"
        annotation (Placement(
              transformation(extent={{-20,-20},{20,20}},rotation=90,
            origin={-20,120})));
      Modelica.Blocks.Interfaces.RealOutput cos_phi "Power quality coefficient"
        annotation (Placement(
              transformation(extent={{-20,-20},{20,20}},rotation=90,
            origin={20,120})));
      Modelica.Blocks.Interfaces.RealOutput phi "Power phasor angle"
        annotation (Placement(
              transformation(extent={{-20,-20},{20,20}},  rotation=90,
            origin={60,120})));
      VoltageSensor voltageSensor annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-20,-50})));
      CurrentSensor currentSensor
        annotation (Placement(transformation(extent={{40,-10},{60,10}})));
      PQ_sensor_IO pQ_sensor_IO
        annotation (Placement(transformation(extent={{-20,20},{20,60}})));
    equation
      connect(p, voltageSensor.p) annotation (Line(
          points={{-100,0},{-20,0},{-20,-40}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(voltageSensor.n, n_voltage) annotation (Line(
          points={{-20,-60},{-20,-80},{-20,-80},{-20,-100}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(p, currentSensor.p) annotation (Line(
          points={{-100,0},{40,0}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(currentSensor.n, n_current) annotation (Line(
          points={{60,0},{100,0}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(voltageSensor.voltage_eff, pQ_sensor_IO.voltage_eff) annotation (Line(
          points={{-8,-50},{0,-50},{0,-26},{-72,-26},{-72,52},{-24,52}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(currentSensor.current_eff, pQ_sensor_IO.current_eff) annotation (Line(
          points={{50,12},{50,20},{-60,20},{-60,44},{-24,44}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(voltageSensor.phi_voltage, pQ_sensor_IO.phi_voltage) annotation (Line(
          points={{-32,-50},{-50,-50},{-50,36},{-24,36}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(currentSensor.phi_current, pQ_sensor_IO.phi_current) annotation (Line(
          points={{50,-12},{50,-20},{-40,-20},{-40,28},{-24,28}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(pQ_sensor_IO.active_power, active_power) annotation (Line(
          points={{24,52},{32,52},{32,68},{-60,68},{-60,120}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(pQ_sensor_IO.reactive_power, reactive_power) annotation (Line(
          points={{24,44},{40,44},{40,80},{-20,80},{-20,120}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(pQ_sensor_IO.cos_phi, cos_phi) annotation (Line(
          points={{24,36},{50,36},{50,90},{20,90},{20,120}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(pQ_sensor_IO.phi, phi) annotation (Line(
          points={{24,28},{60,28},{60,120}},
          color={0,0,127},
          smooth=Smooth.None));
    end PQ_sensor;

    model PQ_sensor_IO "Power quality sensor using signals as IO"
    // extends Modelica.Blocks.Interfaces.BlockIcon;
      extends Modelica.Icons.RotationalSensor;
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                          graphics),
        Icon(graphics={Text(
                extent={{-56,-16},{58,-60}},
                lineColor={0,0,0},
                textString="PQ_Sensor_IO"), Text(
                extent={{-100,64},{100,104}},
                lineColor={0,0,255},
                textString="%name")}),
        Documentation(info="<html>
<p>
The PQ_sensor_IO component uses only signals as inputs (rms values and phase angle
of voltage and current) and yields the quantities active (or real) power,
reactive (or idle) power, the power quality coefficient <tt>cos(phi)</tt> and
the power phasor angle <tt>phi</tt>.
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</dl>
</p>
</html>"));
      Modelica.Blocks.Interfaces.RealInput voltage_eff
          "Voltage phasor's rms value [V]"
        annotation (Placement(
              transformation(extent={{-140,40},{-100,80}},rotation=0)));
      Modelica.Blocks.Interfaces.RealInput current_eff
          "Current phasor's rms value [A]"
        annotation (Placement(
              transformation(extent={{-140,0},{-100,40}},rotation=0)));
      Modelica.Blocks.Interfaces.RealInput phi_voltage
          "Voltage phasor's angle [rad]"
        annotation (Placement(
              transformation(extent={{-140,-40},{-100,0}},rotation=0)));
      Modelica.Blocks.Interfaces.RealInput phi_current
          "Current phasor's angle [rad]"
        annotation (Placement(
              transformation(extent={{-140,-80},{-100,-40}},rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput active_power "Active power"
        annotation (Placement(
              transformation(extent={{100,40},{140,80}},rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput reactive_power "Reactive power"
        annotation (Placement(
              transformation(extent={{100,0},{140,40}},rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput cos_phi "Power quality coefficient"
        annotation (Placement(
              transformation(extent={{100,-40},{140,0}},rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput phi "Power phasor angle"
        annotation (Placement(
              transformation(extent={{100,-80},{140,-40}},rotation=0)));
      SI.Power apparent_power;
      SI.Angle sin_phi;
    equation
      phi = phi_voltage - phi_current;
      cos_phi = cos(phi);
      sin_phi = sin(phi);
      apparent_power = voltage_eff * current_eff;
      active_power = apparent_power * cos_phi;
      reactive_power = apparent_power * sin_phi;
    end PQ_sensor_IO;
   end Sensors;

  package Sources
      "Source components for electrical circuits described within phasor domain"
     annotation (
        Documentation(info="<HTML>
<P>
This package contains electrical source components for phasor analysis:
<ul>
<li>SineVoltage</li>
<li>SineCurrent</li>
<li>SignalVoltage</li>
<li>SignalCurrent</li>
<li>ConstantPower</li>
<li>SignalPower</li>
</ul>
</P>
</HTML>
"));
  model SineVoltage "Voltage source"
        extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
        parameter SI.Voltage V=1 "Effective (or rms) value of applied EMF";
        parameter SI.Angle phase=0 "Phase angle of applied EMF";
       annotation (
       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(extent={{-150,80},{150,120}}, textString=""),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5),
              Text(
                extent={{-100,-109},{100,-69}},
                lineColor={0,0,255},
                textString="%name")}),
       Window(
         x=0.31,
         y=0.09,
         width=0.6,
         height=0.6),
       Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Documentation(info="<html>
<P>
A sinusoidal voltage source in time-domain using fixed amplitude and
fixed phase angle corresponds to a constant applied voltage phasor <tt>v</tt>
in phasor analysis.
The effective (or rms) value <tt>V</tt> and the phase angle
<tt>phase</tt> of the voltage phasor are constant values.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
  equation
        vRe = V*cos(phase);
        vIm = V*sin(phase);
  end SineVoltage;

   model SineCurrent "Current Source"
        extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
        parameter SI.Current I=1 "Effective (or rms) value of applied current";
        parameter SI.Angle phase=0 "Phase angle of applied current";
      annotation (
       Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Text(
                extent={{-100,-109},{100,-69}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
       Window(
         x=0.39,
         y=0.19,
         width=0.6,
         height=0.6),
       Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
       Documentation(info="<html>
<p>
A sinusoidal current source in time-domain using fixed amplitude and
fixed phase angle corresponds to a constant applied current phasor <tt>i</tt>
in phasor analysis.
The effective (or rms) value <tt>I</tt> and the phase angle
<tt>phase</tt> of the current phasor are constant values.
</p>
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>"));
   equation
        iRe = -I*cos(phase);
        iIm = -I*sin(phase);
   end SineCurrent;

     model SignalVoltage "Voltage source with variable rms value and phase"
       extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
        Modelica.Blocks.Interfaces.RealInput V
          "Effective (or rms) value of applied EMF [V]"
                    annotation (Placement(transformation(
              origin={0,70},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealInput phase
          "Phase angle of applied EMF [rad]"
                        annotation (Placement(transformation(
              origin={0,-70},
              extent={{20,-20},{-20,20}},
              rotation=270)));
        annotation (
         Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Text(
                extent={{-100,-120},{100,-80}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
         Window(
           x=0.36,
           y=0.03,
           width=0.62,
           height=0.76),
         Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
         Documentation(info="<html>
<p>
A sinusoidal voltage source in time-domain corresponds to an applied voltage phasor <tt>v</tt>
in phasor analysis.
In the SignalVoltage component, the effective (or rms) value <tt>V</tt> and the phase angle
<tt>phase</tt> of the applied voltage phasor are not forced to be constant values.
Hence, these values are specified by input signals.
</p>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, both rms value and phase angle may alter
only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the
phasor domain-based model.
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>"));
     equation
        vRe = V*cos(phase);
        vIm = V*sin(phase);
     end SignalVoltage;
   //model SignalCurrent added by Simon Schwunk, Fraunhofer ISE, 4/10/2005
   //declaration of current as rms-value
     model SignalCurrent "Current source with variable rms value and phase"
       extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
        Modelica.Blocks.Interfaces.RealInput I
          "Effective (or rms) value of applied current [A]"
                    annotation (Placement(transformation(
              origin={0,70},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealInput phase
          "Phase angle of applied current [rad]"
           annotation (Placement(
              transformation(
              origin={0,-70},
              extent={{20,-20},{-20,20}},
              rotation=270)));
        annotation (
         Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Text(
                extent={{-100,-120},{100,-80}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
         Window(
           x=0.39,
           y=0.19,
           width=0.6,
           height=0.6),
         Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
         Documentation(info="<html>
<p>
A sinusoidal current source in time-domain corresponds to an applied current
phasor <tt>i</tt> in phasor analysis.
In the SignalCurrent component, the effective (or rms) value <tt>I</tt> and the phase angle
<tt>phase</tt> of the applied current phasor are not forced to be constant values.
Hence, these values are specified by input signals.
</p>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, both rms value and phase angle may alter
only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the
phasor domain-based model.
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</p>
</dl>
</html>"));
     equation
        p.iRe = -I*cos(phase);
        p.iIm = -I*sin(phase);
     end SignalCurrent;

      annotation (Documentation(info="<html>
<dl>
<dt>
<b>Main Authors:</b>
Matthias Vetter, Simon Schwunk
Fraunhofer ISE
<p>
</dl>
</html>"));
    model ConstantPower "Source component with constant power"
      extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
      parameter SI.Power power=1 "Rms value of applied power phasor";
      parameter SI.Angle phase=0 "Phasor angle of applied power";
      annotation (
        Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Text(
                extent={{-100,-97},{100,-57}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-30,30},{-30,-30}}, color={0,0,0}),
              Line(points={{-30,-30},{30,-30}}, color={0,0,0}),
              Line(
                points={{-23.3,30},{-22,20},{-20,10},{-16.7,0},{-10,-10},{0,-16.7},
                    {10,-20},{20,-22},{30,-23.3}},
                color={0,0,0},
                thickness=0.5)}),
        Window(
          x=0.36,
          y=0.03,
          width=0.62,
          height=0.76),
        Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{-30,30},{-30,-30}}, color={0,0,0}),
              Line(points={{-30,-30},{30,-30}}, color={0,0,0}),
              Line(
                points={{-23.3,30},{-22,20},{-20,10},{-16.7,0},{-10,-10},{0,-16.7},
                    {10,-20},{20,-22},{30,-23.3}},
                color={0,0,0},
                thickness=0.5)}),
        Documentation(info="<html>
<P>
The ConstantPower source component applies a power phasor of constant rms and phase
into the phasor-based electrical circuit.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
    equation
      v*i = power;
      phi_v = phase;
    end ConstantPower;

    model SignalPower "Source component with a specified power phasor"
      extends ComplexLib.SinglePhase.Interfaces.OnePortSrc;
      Modelica.Blocks.Interfaces.RealInput power
          "Rms value of applied power phasor [W]"
        annotation (Placement(transformation(
              origin={0,70},
              extent={{-20,-20},{20,20}},
              rotation=270)));
      Modelica.Blocks.Interfaces.RealInput phase
          "Phasor angle of applied power [rad]"
                       annotation (Placement(transformation(
              origin={0,-70},
              extent={{20,-20},{-20,20}},
              rotation=270)));
      annotation (
        Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Text(
                extent={{-100,-120},{100,-80}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-30,30},{-30,-30}}, color={0,0,0}),
              Line(points={{-30,-30},{30,-30}}, color={0,0,0}),
              Line(
                points={{-23.3,30},{-22,20},{-20,10},{-16.7,0},{-10,-10},{0,-16.7},
                    {10,-20},{20,-22},{30,-23.3}},
                color={0,0,0},
                thickness=0.5)}),
        Window(
          x=0.36,
          y=0.03,
          width=0.62,
          height=0.76),
        Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{-30,30},{-30,-30}}, color={0,0,0}),
              Line(points={{-30,-30},{30,-30}}, color={0,0,0}),
              Line(
                points={{-23.3,30},{-22,20},{-20,10},{-16.7,0},{-10,-10},{0,-16.7},
                    {10,-20},{20,-22},{30,-23.3}},
                color={0,0,0},
                thickness=0.5)}),
        Documentation(info="<html>
<P>
The SignalPower source component applies a power phasor of variable rms and phase
into the phasor-based electrical circuit. Hence, these values are specified by input signals.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, both rms value and phase angle may alter
only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the
phasor domain-based model.
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
    equation
      v*i = power;
      phi_v = phase;
    end SignalPower;
  end Sources;

  end SinglePhase;

  package MultiPhase "Library for phasor domain-based multi-phase components"
    package Basic "Basic electrical phasor domain-based multi-phase components"
      annotation (Documentation(info="<html>
<P>
This package contains basic electrical components for phasor analysis:
<ul>
<li>Star</li>
<li>Delta</li>
<li>Resistor</li>
<li>Inductor</li>
<li>Capacitor</li>
<li>Conductor</li>
<li>VariableResistor</li>
<li>VariableInductor</li>
<li>VariableCapacitor</li>
<li>VariableConductor</li>
</ul>
</P>
</html>"));
      model Star "Star connects all phases with one pin"
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Complex plug (positive)"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n
          "Complex pin (negative)"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0)));
        annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}), graphics={
              Text(
                extent={{-150,60},{150,120}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{0,0},{-80,0}},
                color={0,0,255},
                thickness=1.0),
              Line(
                points={{40,-68},{0,0}},
                color={0,0,255},
                thickness=1),
              Line(
                points={{40,70},{0,0}},
                color={0,0,255},
                thickness=1),
              Text(
                extent={{-100,-110},{100,-70}},
                lineColor={0,0,0},
                textString="m=%m"),
              Line(points={{-100,0},{-80,0}}, color={0,0,255}),
              Line(points={{0,0},{100,0}}, color={0,0,255}),
              Line(
                points={{-100,0},{-60,60},{40,70}},
                color={0,0,255},
                smooth=Smooth.Bezier),
              Line(
                points={{-100,0},{-60,-60},{40,-68}},
                color={0,0,255},
                smooth=Smooth.Bezier)}),
            Documentation(
              info="<HTML>
<p>
Connects all pins of plug_p to pin_n, thus establishing a so-called star-connection.
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
<p>
</dl>
</HTML>"));
      equation
        for j in 1:m loop
          connect(plug_p.complexPin[j],pin_n);
        end for;
      end Star;

      model Delta "Delta connects pins in a cyclic way"
          parameter Integer m(final min=2) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0)));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Text(
                extent={{-150,60},{150,120}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{-40,68},{-40,-70},{79,0},{-40,68},{-40,67}},
                color={0,0,255},
                thickness=0.5),
              Text(
                extent={{-100,-110},{100,-70}},
                lineColor={0,0,0},
                textString="m=%m"),
              Line(points={{-90,0},{-40,0}}, color={0,0,255}),
              Line(points={{80,0},{90,0}}, color={0,0,255})}),
            Documentation(
              info="<HTML>
<p>
Connects in a cyclic way plug_n.pin[j] to plug_p.pin[j+1],
thus establishing a so-called delta (or polygon) connection
when used in parallel to another component.
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</HTML>"));
      equation
        for j in 1:m loop
          if j<m then
            connect(plug_n.complexPin[j],plug_p.complexPin [j+1]);
          else
            connect(plug_n.complexPin[j],plug_p.complexPin [1]);
          end if;
        end for;
      end Delta;

      model Resistor "Ideal linear electrical resistors for phasor analysis"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        parameter SI.Resistance R[m]=fill(1, m) "Resistances";
        ComplexLib.SinglePhase.Basic.Resistor resistor[m](final R=R)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,0},{-70,0}}),
              Line(points={{70,0},{90,0}}),
              Text(
                extent={{-138,-60},{144,-102}},
                lineColor={0,0,0},
                textString="R=%R"),
              Text(
                extent={{-148,40},{152,100}},
                lineColor={0,0,255},
                textString="%name")}),
          Documentation(info="<HTML>
<p>
Contains <tt>m<\\tt> resistors (Complex.SinglePhase.Basic.Resistor)
Resistor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      R[k]*i[k] = v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All resistor <tt>L[k]</tt> are constant values.
</P>
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics));
      equation
        connect(resistor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(resistor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
      end Resistor;

      model Inductor "Ideal linear electrical inductors for phasor analysis"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        parameter SI.Inductance L[m]=fill(1, m) "Inductances";
        ComplexLib.SinglePhase.Basic.Inductor inductor[m](final L=L)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
       Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
                  100,100}}), graphics={
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{60,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{60,0},{90,0}}),
              Line(points={{-90,0},{-60,0}}),
              Text(
                extent={{-138,-60},{144,-102}},
                lineColor={0,0,0},
                textString="L=%L"),
              Text(
                extent={{-146,38},{148,100}},
                lineColor={0,0,255},
                textString="%name")}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear inductors.
Inductor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      j&omega;L[k]*i[k] = v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All inductances <tt>L[k]</tt> are constant values.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics));
      equation
        connect(inductor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(inductor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
      end Inductor;

      model Capacitor "Ideal linear electrical capacitors for phasor analysis"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        parameter SI.Capacitance C[m]=fill(1, m) "Capacitances";
        ComplexLib.SinglePhase.Basic.Capacitor capacitor[m](final C=C)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(
                points={{-10,28},{-10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,28},{10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(points={{-90,0},{-10,0}}),
              Line(points={{10,0},{90,0}}),
              Text(
                extent={{-136,-60},{136,-100}},
                lineColor={0,0,0},
                textString="C=%C"),
              Text(
                extent={{-142,40},{140,100}},
                lineColor={0,0,255},
                textString="%name")}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear capacitors.
Capacitor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      i[k] = j&omega;C[k]*v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All capacitances <tt>C[k]</tt> are constant values.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics));
      equation
        connect(capacitor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(capacitor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
      end Capacitor;

      model Conductor "Ideal linear electrical conductor for phasor analysis"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        parameter ComplexLib.SIunits.Conductance G[m]=fill(1, m) "Conductances";
        ComplexLib.SinglePhase.Basic.Conductor conductor[m](final G=G)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-90,0},{-70,0}}),
              Line(points={{70,0},{90,0}}),
              Text(
                extent={{-148,40},{152,100}},
                lineColor={0,0,255},
                textString="%name"),
              Text(
                extent={{-100,-100},{100,-60}},
                lineColor={0,0,0},
                textString="G=%G")}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear conductors.
Conductor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      i[k] = G[k]*v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All conductances <tt>G[k]</tt> are constant values.
</P>
<p>
  <br><dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics));
      equation
        connect(conductor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(conductor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
      end Conductor;

      model VariableResistor
        "Ideal linear electrical resistors with variable resistances"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        Modelica.Blocks.Interfaces.RealInput R
          "Variable resistance via input signal [Ohm]"
                    annotation (Placement(transformation(
              origin={0,110},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.VariableResistor resistor[m]
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-148,-100},{144,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-90,0},{-70,0}}),
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{70,0},{90,0}}),
              Line(points={{0,90},{0,30}}, color={0,0,255})}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear resistors.
Resistor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      R*i[k] = v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All resistors have the same resistance value specified by input signal
<tt>R</tt>.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the input signal <tt>R</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is recommended that the R signal should not cross the zero value.<br>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Line(points={{0,90},{0,12}},
                  color={0,0,255})}));
      equation
        connect(resistor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(resistor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
        connect(resistor[1].R, R);
        connect(resistor[2].R, R);
        connect(resistor[3].R, R);
      end VariableResistor;

      model VariableInductor
        "Ideal linear electrical inductors with variable inductances"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        Modelica.Blocks.Interfaces.RealInput L
          "Variable inductance via input signal [H]"
                    annotation (Placement(transformation(
              origin={0,110},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.VariableInductor inductor[m]
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-138,-100},{136,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-90,0},{-60,0}}),
              Line(points={{60,0},{90,0}}),
              Line(points={{0,90},{0,8}}, color={0,0,255}),
              Ellipse(extent={{-60,-15},{-30,15}}),
              Ellipse(extent={{-30,-15},{0,15}}),
              Ellipse(extent={{0,-15},{30,15}}),
              Ellipse(extent={{30,-15},{60,15}}),
              Rectangle(
                extent={{-60,-30},{60,0}},
                lineColor={255,255,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid)}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear inductors.
Inductor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      j&omega;L*i[k] = v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All inductors have the same inductance value specified by input signal
<tt>L</tt>.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the input signal <tt>L</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is required that <tt>L &ge; 0</tt>, otherwise an assertion is raised.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Line(points={{0,90},{0,12}},
                  color={0,0,255})}));
      equation
        assert(L>=0,"Inductance L_ (= " + String(L) + ") has to be >= 0!");
        connect(inductor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(inductor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
        connect(inductor[1].L, L);
        connect(inductor[2].L, L);
        connect(inductor[3].L, L);
      end VariableInductor;

      model VariableCapacitor
        "Ideal linear electrical capacitors with variable capacitances"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        Modelica.Blocks.Interfaces.RealInput C
          "Variable capacitance via input signal [F]"
                    annotation (Placement(transformation(
              origin={0,110},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.VariableCapacitor capacitor[m]
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-134,-100},{136,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-90,0},{-10,0}}),
              Line(points={{10,0},{90,0}}),
              Line(points={{0,90},{0,30}}, color={0,0,255}),
              Line(
                points={{-10,28},{-10,-28}},
                color={0,0,255},
                thickness=0.5),
              Line(
                points={{10,28},{10,-28}},
                color={0,0,255},
                thickness=0.5)}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear capacitors.
Capacitor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      i[k] = j&omega;C*v[k]</pre>
<tt>(k=1...m)</tt>.<br>
All capacitors have the same capacitance value specified by input signal
<tt>C</tt>.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the input signal <tt>C</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is required that <tt>C &ge; 0</tt>, otherwise an assertion is raised.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Line(points={{0,90},{0,12}},
                  color={0,0,255})}));
      equation
        assert(C>=0,"Capacitance C_ (= " + String(C) + ") has to be >= 0!");
        connect(capacitor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(capacitor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
        connect(capacitor[1].C, C);
        connect(capacitor[2].C, C);
        connect(capacitor[3].C, C);
      end VariableCapacitor;

      model VariableConductor
        "Ideal linear electrical conductors with variable conductances"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlug;
        Modelica.Blocks.Interfaces.RealInput G
          "Variable conductance via input signal [S]"
                    annotation (Placement(transformation(
              origin={0,110},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.VariableConductor conductor[m]
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Text(
                extent={{-148,-100},{144,-40}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-90,0},{-70,0}}),
              Rectangle(
                extent={{-70,30},{70,-30}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{70,0},{90,0}}),
              Line(points={{0,90},{0,30}}, color={0,0,255})}),
          Documentation(info="<HTML>
<P>
The model contains <tt>m</tt> linear conductors.
Conductor no. <tt>k</tt> connects the branch voltage phasor <tt>v[k]</tt>
with the corresponding branch current phasor <tt>i[k]</tt> by
<pre>      i[k] = G*v[k]</pre>
<tt>(k=1...m)</tt>.
All conductors have the same conductance value specified by input signal
<tt>G</tt>.
</P>
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the input signal <tt>G</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the phasor domain-based model.
</p>
<p>
<b>Remark:</b><br>
It is recommended that the G signal should not cross the zero value.<br>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Line(points={{0,90},{0,12}},
                  color={0,0,255})}));
      equation
        connect(conductor.p, plug_p.complexPin)
          annotation (Line(points={{-10,0},{-32.5,0},{-32.5,0},{-55,0},{-55,0},
                {-100,0}}, color={0,0,255}));
        connect(conductor.n, plug_n.complexPin)
          annotation (Line(points={{10,0},{32.5,0},{32.5,0},{55,0},{55,0},{100,
                0}}, color={0,0,255}));
        connect(conductor[1].G, G);
        connect(conductor[2].G, G);
        connect(conductor[3].G, G);
      end VariableConductor;
    end Basic;

    package Interfaces
      "Interfaces for electrical phasor domain-based multi-phase components"

       annotation (
          Documentation(info="<HTML>
<P>
This package contains connectors and interfaces (partial models) for
electrical components for phasor analysis of multi-phase circuits:
<ul>
<li>ComplexPlug</li>
<li>PosComplexPlug</li>
<li>NegComplexPlug</li>
<li>TwoPlug</li>
<li>TwoPlugSrc</li>
<li>PlugToPin_p</li>
<li>PlugToPin_n</li>
</ul>
</P>
</HTML>
"));
      connector ComplexPlug
        "Multi-phase pin of a multi-phase component described within phasor domain"
        annotation (Documentation(info="<html>
<p>
  ComplexPlug is a multi phase-like pin of a component which is used
  for phasor analysis of a multi-phase circuit..
  Therefore, <tt>m</tt> voltage phasors (potential variables) and
  <tt>m</tt> current phasor (flow variables) are used instead of
  instantaneous values of voltages and currents, respectively.<br>
  Each phasor consists of its real and its imaginary part.
</p>
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
  <dt><b>and</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
</dl>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.SinglePhase.Interfaces.ComplexPin complexPin[m]
          "Single-phase instances";
      end ComplexPlug;

      connector PosComplexPlug "Positive multi-phase pin for phasor domain"
        extends ComplexPlug;
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Ellipse(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Polygon(
                points={{-70,30},{-70,-30},{-30,-70},{30,-70},{70,-30},{70,30},
                    {30,70},{-30,70},{-70,30}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}),
                                  Documentation(info="<html>
<p>
Connectors PosComplexPlug and NegComplexPlug are nearly identical.
The only difference is that the icons are different in order
to identify more easily the plugs of a component.
Usually, connector PosComplexPlug is used for the positive plug of an electrical component.
</p>
<p>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Ellipse(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Polygon(
                points={{-70,30},{-70,-30},{-30,-70},{30,-70},{70,-30},{70,30},
                    {30,70},{-30,70},{-70,30}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}));
      end PosComplexPlug;

      connector NegComplexPlug "Positive multi-phase pin for phasor domain"
        extends ComplexPlug;
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Ellipse(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Polygon(points={{-70,30},{-70,-30},
                    {-30,-70},{30,-70},{70,-30},{70,30},{30,70},{-30,70},{-70,
                    30}}, lineColor={0,0,255})}),
                                         Documentation(info="<html>
<p>
Connectors PosComplexPlug and NegComplexPlug are nearly identical.
The only difference is that the icons are different in order
to identify more easily the plugs of a component.
Usually, connector NegComplexPlug is used for the negative plug of an electrical component.
</p>
<p>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Ellipse(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid), Polygon(points={{-70,30},{-70,-30},
                    {-30,-70},{30,-70},{70,-30},{70,30},{30,70},{-30,70},{-70,
                    30}}, lineColor={0,0,255})}));
      end NegComplexPlug;

      partial model TwoPlug
        "Passive component having two ComplexPlugs p and n and NOT using current phasor balance"
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        PosComplexPlug plug_p(final m=m)
          "Positive complex plug (potential plug_p.v[j] > plug_n.v[j] for positive voltage drop v[j])"
          annotation (Placement(transformation(
                extent={{-110,-10},{-90,10}}, rotation=0)));
        NegComplexPlug plug_n(final m=m) "Negative complex plug"
          annotation (Placement(transformation(
                extent={{90,-10},{110,10}}, rotation=0)));
        ComplexLib.Interfaces.ComplexOutput complexPwr[m]
          "Complex values of power of component"
          annotation (Placement(
              transformation(extent={{96,18},{116,38}}, rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
Superclass of elements which have two electrical plugs:
the positive plug connector and the negative plug connector.
The currents flowing into plug_p are provided explicitly as currents i[m].<br>
No inner current balance between the two complex plugs is used.
Hence, class TwoPlug is suitable for building internal electrical circuits
consisting of passive components extended from (one-phase) superclasses OnePort or TwoPort.
</p>
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</dl>
</p></HTML>"),
             Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                     graphics),
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}),
               graphics));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_p.complexPin.iRe;
        iIm = plug_p.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
          activePwr[j] = v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr.real = activePwr;
        complexPwr.im = idlePwr;
      end TwoPlug;

      partial model TwoPlugSrc
        "Passive component having two ComplexPlugs p and n and NOT using current phasor balance"
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        PosComplexPlug plug_p(final m=m)
          "Positive complex plug (potential plug_p.v[j] > plug_n.v[j] for positive voltage drop v[j])"
          annotation (Placement(transformation(
                extent={{-110,-10},{-90,10}}, rotation=0)));
        NegComplexPlug plug_n(final m=m) "Negative complex plug"
          annotation (Placement(transformation(
                extent={{90,-10},{110,10}}, rotation=0)));
        ComplexLib.Interfaces.ComplexOutput complexPwr[m]
          "Complex values of power of component"
      annotation (Placement(
              transformation(extent={{98,16},{118,36}}, rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
Superclass of elements which have two electrical plugs:
the positive plug connector, and the negative plug connector.
The currents flowing into plug_p are provided explicitly as currents i[m].<br>
No inner current balance between the two complex plugs is used.
Hence, class TwoPlugSrc is suitable for building internal electrical circuits
consisting of source components extended from (one-phase) superclass OnePortSrc.
</p>
<p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
</dl>
</p>
</HTML>"),   Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                     graphics),
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}),
               graphics));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_n.complexPin.iRe;
        iIm = plug_n.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
        // Leistungen im "Verbraucherpfeilsystem"
          activePwr[j] = -v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = -v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr.real = activePwr;
        complexPwr.im = idlePwr;
      end TwoPlugSrc;

      model PlugToPin_p
        "Connection between k-th phase of a complex plug and a (positive) pin"
        parameter Integer m(final min=1) = 3 "Number of phases";
        parameter Integer k(
          final min=1, final max=m, start=1) "Phase index";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin pin_p
          "Positive complex pin"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0)));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(points={{-90,0},{90,0}}),
              Text(
                extent={{-150,100},{150,40}},
                lineColor={0,0,255},
                textString="%name"),
              Text(
                extent={{-100,-60},{100,-100}},
                lineColor={0,0,0},
                textString="k=%k"),
              Polygon(
                points={{-100,10},{90,0},{-100,-10},{-100,10}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}),
          Documentation(info="<HTML>
<p>
The PlugToPin_p component connects the complex pin <tt>k</tt> of (multi-phase)
plug_p to (single-phase) pin_p, leaving the other pins of plug_p unconnected.
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics));
      equation
        pin_p.vRe = plug_p.complexPin[k].vRe;
        pin_p.vIm = plug_p.complexPin[k].vIm;
        for j in 1:m loop
          plug_p.complexPin[j].iRe = if j == k then -pin_p.iRe else 0;
          plug_p.complexPin[j].iIm = if j == k then -pin_p.iIm else 0;
        end for;
      end PlugToPin_p;

      model PlugToPin_n "Connect one (negative) pin"
        parameter Integer m(final min=1) = 3 "Number of phases";
        parameter Integer k(
          final min=1, final max=m, start=1) "Phase index";
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin pin_n
          "Negative complex pin"
          annotation (Placement(transformation(extent={{92,-10},{112,10}},
                rotation=0)));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{-90,0},{92,0}}),
              Text(
                extent={{-150,100},{150,40}},
                lineColor={0,0,255},
                textString="%name"),
              Text(
                extent={{-100,-60},{100,-100}},
                lineColor={0,0,0},
                textString="k = %k"),
              Polygon(points={{-100,10},{92,0},{-100,-10},{-100,10}}, lineColor=
                   {0,0,255})}),
             Documentation(info="<HTML>
<p>
The PlugToPin_n component connects the complex pin <tt>k</tt> of (multi-phase)
plug_n to (single-phase) pin_n, leaving the other pins of plug_n unconnected.</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</HTML>"));
      equation
        pin_n.vRe = plug_n.complexPin[k].vRe;
        pin_n.vIm = plug_n.complexPin[k].vIm;
        for j in 1:m loop
          plug_n.complexPin[j].iRe = if j == k then -pin_n.iRe else 0;
          plug_n.complexPin[j].iIm = if j == k then -pin_n.iIm else 0;
        end for;
      end PlugToPin_n;
      annotation (Documentation(info="<html>
<P>
This package contains connectors and interfaces (partial models) for
electrical components for phasor analysis:
<ul>
<li>ComplexPlug</li>
<li>PosComplexPlug</li>
<li>NegComplexPlug</li>
<li>TwoPlug</li>
<li>TwoPlugSrc</li>
<li>FourPlug</li>
<li>PlugToPin_p</li>
<li>PlugToPin_n</li>
</ul>
</P>
</html>"));
    end Interfaces;

    package Sensors
      "Multi-phase sensors for electrical circuits described within phasor domain"
      model PotentialSensor "Multi-phase sensor for absolute voltage"
        extends Modelica.Icons.RotationalSensor;
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(
              transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput potential_eff[m]
          "Rms values of voltage phasors"
           annotation (Placement(transformation(
              origin={0,110},
              extent={{-10,10},{10,-10}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi_potential[m]
          "Angles of voltage phasors"
          annotation (Placement(
              transformation(
              origin={0,-110},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        ComplexLib.SinglePhase.Sensors.PotentialSensor potentialSensor[m]
          annotation (Placement(transformation(extent={{-20,-20},{20,20}},
                rotation=0)));
        annotation (
          Icon(graphics={
              Text(
                extent={{-29,-11},{30,-70}},
                lineColor={0,0,0},
                textString="V"),
              Text(
                extent={{-100,60},{100,120}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-70,0},{-90,0}}, color={0,0,0}),
              Line(points={{0,-100},{0,-70}})}),
          Documentation(info="<HTML>
<P>
The multi-phase potential sensor consists of <tt>m</tt> single-phase potential sensors.
It yields rms values and angles of <tt>m</tt> (absolute) potential phasors
<tt>plug_p.v[k]</tt>.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</dl>
</HTML>"),Diagram(graphics));
      equation
        connect(potentialSensor.p, plug_p.complexPin)
          annotation (Line(points={{-20,0},{-32.5,0},{-32.5,1.22125e-015},{-55,
                1.22125e-015},{-55,0},{-100,0}},                          color=
               {0,0,255}));
        connect(potential_eff, potentialSensor.potential_eff)
                                                        annotation (Line(points={{0,110},
                {0,24}},               color={0,0,127}));
        connect(phi_potential, potentialSensor.phi_potential)
                                                        annotation (Line(points={{0,-110},
                {0,-24}},                          color={0,0,127}));
      end PotentialSensor;

      model VoltageSensor "Multi-phase voltage sensor"
        extends Modelica.Icons.RotationalSensor;
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(
              transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(
              transformation(extent={{90,-10},{110,10}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput voltage_eff[m]
          "Rms values of voltage phasors"
           annotation (Placement(transformation(
              origin={0,110},
              extent={{-10,10},{10,-10}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi_voltage[m]
          "Angles of voltage phasors"
          annotation (Placement(
              transformation(
              origin={0,-110},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        ComplexLib.SinglePhase.Sensors.VoltageSensor voltageSensor[m]
          annotation (Placement(transformation(extent={{-20,-20},{20,20}},
                rotation=0)));
        annotation (
          Icon(graphics={
              Text(
                extent={{-29,-11},{30,-70}},
                lineColor={0,0,0},
                textString="V"),
              Text(
                extent={{-100,60},{100,120}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-70,0},{-90,0}}, color={0,0,0}),
              Line(points={{70,0},{90,0}}, color={0,0,0}),
              Line(points={{0,-100},{0,-70}})}),
          Documentation(info="<HTML>
<p>
The multi-phase voltage sensor consists of <tt>m</tt> single-phase voltage sensors.
It yields rms values and angles of <tt>m</tt> voltage phasors <tt>v[k]</tt> which are measured from
plug <tt>plug_p</tt> to plug <tt>plug_n</tt> (i.e. between <tt>m</tt> pairs of corresponding pins)
according to <tt> v= plug_p.v - plug_n.v</tt>.
</p>
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</HTML>"),Diagram(graphics));
      equation
        connect(voltageSensor.n, plug_n.complexPin)
          annotation (Line(points={{20,0},{32.5,0},{32.5,1.22125e-015},{55,
                1.22125e-015},{55,0},{100,0}},                   color={0,0,255}));
        connect(voltageSensor.p, plug_p.complexPin)
          annotation (Line(points={{-20,0},{-32.5,0},{-32.5,1.22125e-015},{-55,
                1.22125e-015},{-55,0},{-100,0}},                          color=
               {0,0,255}));
        connect(voltage_eff, voltageSensor.voltage_eff) annotation (Line(points={{0,110},
                {0,24}},               color={0,0,127}));
        connect(phi_voltage, voltageSensor.phi_voltage) annotation (Line(points={{0,-110},
                {0,-24}},                          color={0,0,127}));
      end VoltageSensor;

      model CurrentSensor "Multi-phase current sensor"
        extends Modelica.Icons.RotationalSensor;
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(
              transformation(extent={{-110,-10},{-90,10}}, rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(
              transformation(extent={{90,-10},{110,10}}, rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput current_eff[m]
          "Rms values of current phasors"
           annotation (Placement(transformation(
              origin={0,110},
              extent={{-10,10},{10,-10}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi_current[m]
          "Angles of current phasors"
          annotation (Placement(
              transformation(
              origin={0,-110},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        ComplexLib.SinglePhase.Sensors.CurrentSensor currentSensor[m]
          annotation (Placement(transformation(extent={{-20,-20},{20,20}},
                rotation=0)));
        annotation (
          Icon(graphics={
              Text(
                extent={{-29,-11},{30,-70}},
                lineColor={0,0,0},
                textString="A"),
              Text(
                extent={{-100,60},{100,120}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{-70,0},{-90,0}}, color={0,0,0}),
              Line(points={{70,0},{90,0}}, color={0,0,0}),
              Line(points={{0,-100},{0,-70}})}),
          Documentation(info="<HTML>
<P>
The multi-phase current sensor consists of <tt>m</tt> single-phase current sensors.
It yields rms values and angles of <tt>m</tt> current phasors <tt>i[k]</tt> which are flowing into
plug <tt>plug_p</tt> according to <tt> i[k]= plug_p.i[k] = -plug_n.i[k]</tt>.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(graphics));
      equation
        connect(currentSensor.n, plug_n.complexPin)
          annotation (Line(points={{20,0},{32.5,0},{32.5,1.22125e-015},{55,
                1.22125e-015},{55,0},{100,0}},                   color={0,0,255}));
        connect(currentSensor.p, plug_p.complexPin)
          annotation (Line(points={{-20,0},{-32.5,0},{-32.5,1.22125e-015},{-55,
                1.22125e-015},{-55,0},{-100,0}},                          color=
               {0,0,255}));
        connect(current_eff, currentSensor.current_eff) annotation (Line(points={{0,110},
                {0,24}},               color={0,0,127}));
        connect(phi_current, currentSensor.phi_current) annotation (Line(points={{0,-110},
                {0,-24}},                          color={0,0,127}));
      end CurrentSensor;

      model PQ_sensor "Multi-phase power quality sensor"
        extends Modelica.Icons.RotationalSensor;
        annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                            graphics),
          Icon(graphics={Text(
                extent={{-46,-24},{48,-54}},
                lineColor={0,0,0},
                textString="PQ_Sensor"), Text(
                extent={{-100,64},{100,104}},
                lineColor={0,0,255},
                textString="%name")}),
          Documentation(info="<HTML>
<P>
The PQ_sensor_3ph component is a 3-phase power quality sensor yielding the outputs
real power (P_real), reactive power (Q_reactive), phase angle &phi; between voltage and current (phi)
and power factor (cos_phi) for each phase. To this end, the voltage drops between
plug <tt>plug_p</tt> and plug <tt>plug_n_voltage</tt> as well as the currents flowing from
plug <tt>plug_p</tt> to plug <tt>plug_n_current</tt> are measured.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"));
        parameter Integer m(final min=1) = 3 "Number of phases";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p
          "Positive complex plug"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n_voltage
          "Negative complex plug for measuring voltages"
          annotation (Placement(transformation(extent={{-30,-110},{-10,-90}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n_current
          "Negative complex plug for measuring currants"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput active_power[m]
          "Active power values"
          annotation (Placement(
                transformation(extent={{-20,-20},{20,20}},rotation=90,
              origin={-60,120})));
        Modelica.Blocks.Interfaces.RealOutput reactive_power[m]
          "Reactive power values"
          annotation (Placement(
                transformation(extent={{-20,-20},{20,20}},rotation=90,
              origin={-20,120})));
        Modelica.Blocks.Interfaces.RealOutput cos_phi[m]
          "Power quality coefficients"
          annotation (Placement(
                transformation(extent={{-20,-20},{20,20}},rotation=90,
              origin={20,120})));
        Modelica.Blocks.Interfaces.RealOutput phi[m] "Power phasor angle"
          annotation (Placement(
                transformation(extent={{-20,-20},{20,20}},  rotation=90,
              origin={60,120})));
        ComplexLib.SinglePhase.Sensors.PQ_sensor pQ_sensor[m]
          annotation (Placement(transformation(extent={{-40,-20},{0,20}})));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_p plugToPin_p[m](k=1:m)
          annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n plugToPin_n_voltage[m](k=1
              :m)
          annotation (Placement(
              transformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={-20,-50})));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n plugToPin_n_current[m](k=1
              :m)
          annotation (Placement(
              transformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={50,0})));
      equation
        for j in 1:m loop
          connect(plug_p, plugToPin_p[j].plug_p) annotation (Line(
            points={{-100,0},{-80,0}},
            color={0,0,255},
            smooth=Smooth.None));
          connect(plug_n_voltage, plugToPin_n_voltage[j].plug_n) annotation (Line(
            points={{-20,-100},{-20,-60}},
            color={0,0,255},
            smooth=Smooth.None));
          connect(plug_n_current, plugToPin_n_current[j].plug_n) annotation (Line(
            points={{100,0},{80,0},{80,-1.22465e-015},{60,-1.22465e-015}},
            color={0,0,255},
            smooth=Smooth.None));
          connect(plugToPin_p[j].pin_p, pQ_sensor[j].p) annotation (Line(
            points={{-60,0},{-40,0}},
            color={0,0,255},
            smooth=Smooth.None));
          connect(plugToPin_n_voltage[j].pin_n, pQ_sensor[j].n_voltage) annotation (Line(
            points={{-20,-39.8},{-20,-30},{-24,-30},{-24,-20}},
            color={0,0,255},
            smooth=Smooth.None));
          connect(plugToPin_n_current[j].pin_n, pQ_sensor[j].n_current) annotation (Line(
            points={{39.8,1.24914e-015},{21.9,1.24914e-015},{21.9,0},{0,0}},
            color={0,0,255},
            smooth=Smooth.None));
        end for;
        connect(pQ_sensor.active_power, active_power) annotation (Line(
            points={{-32,24},{-32,60},{-60,60},{-60,120}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pQ_sensor.reactive_power, reactive_power) annotation (Line(
            points={{-24,24},{-24,72},{-20,72},{-20,120}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pQ_sensor.cos_phi, cos_phi) annotation (Line(
            points={{-16,24},{-16,60},{20,60},{20,120}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pQ_sensor.phi, phi) annotation (Line(
            points={{-8,24},{-8,40},{60,40},{60,120}},
            color={0,0,127},
            smooth=Smooth.None));
      end PQ_sensor;

      model PQ_sensor_3ph "3-phase power quality  sensor"
        annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}),
                            graphics),
          Documentation(info="<HTML>
<P>
The PQ_sensor_3ph component is a 3-phase power quality sensor yielding the outputs
real power (P_real), reactive power (Q_reactive), phase angle &phi; between voltage and current (phi)
and power factor (cos_phi) for each phase.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"),       Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0}),
              Ellipse(
                extent={{-70,70},{70,-70}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-0.48,31.6},{18,26},{18,57.2},{-0.48,31.6}},
                lineColor={0,0,0},
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(points={{0,70},{0,40}}, color={0,0,0}),
              Line(points={{0,0},{9.02,28.6}}, color={0,0,0}),
              Ellipse(
                extent={{-5,5},{5,-5}},
                lineColor={0,0,0},
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid),
              Line(points={{22.9,32.8},{40.2,57.3}}, color={0,0,0}),
              Line(points={{37.6,13.7},{65.8,23.9}}, color={0,0,0}),
              Text(
                extent={{-40,100},{40,70}},
                lineColor={0,0,255},
                textString="%name"),
              Text(
                extent={{-46,-26},{46,-48}},
                lineColor={0,0,255},
                textString="PQ_sensor_3ph"),
              Line(points={{-22,34},{-39.8,57.3}}, color={0,0,0}),
              Line(points={{-66,24},{-32,14}}, color={0,0,0})}));
        ComplexLib.SinglePhase.Sensors.PQ_sensor_IO PQ_sensor1
          annotation (Placement(transformation(
              origin={-22,70},
              extent={{10,-10},{-10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.PQ_sensor_IO PQ_sensor2
          annotation (Placement(transformation(
              origin={14,70},
              extent={{10,-10},{-10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.PQ_sensor_IO PQ_sensor3
          annotation (Placement(transformation(
              origin={50,70},
              extent={{10,-10},{-10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.VoltageSensor VoltageSensor1
          annotation (Placement(transformation(
              origin={20,32},
              extent={{-10,10},{10,-10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.VoltageSensor VoltageSensor2
          annotation (Placement(transformation(
              origin={20,-6},
              extent={{-10,10},{10,-10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.VoltageSensor VoltageSensor3
          annotation (Placement(transformation(
              origin={20,-46},
              extent={{-10,10},{10,-10}},
              rotation=270)));
        ComplexLib.SinglePhase.Sensors.CurrentSensor CurrentSensor1
          annotation (Placement(transformation(extent={{-54,56},{-34,36}},
                rotation=0)));
        ComplexLib.SinglePhase.Sensors.CurrentSensor CurrentSensor2
          annotation (Placement(transformation(extent={{-54,16},{-34,-4}},
                rotation=0)));
        ComplexLib.SinglePhase.Sensors.CurrentSensor CurrentSensor3
          annotation (Placement(transformation(extent={{-54,-24},{-34,-44}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_p PlugToPin_p1
          annotation (Placement(transformation(extent={{-82,36},{-62,56}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_p PlugToPin_p2(k=2)
          annotation (Placement(transformation(extent={{-82,-4},{-62,16}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_p PlugToPin_p3(k=3)
          annotation (Placement(transformation(extent={{-82,-44},{-62,-24}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Current_n1
          annotation (Placement(transformation(extent={{84,36},{64,56}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Current_n2(k=2)
          annotation (Placement(transformation(extent={{84,-4},{64,16}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Current_n3(k=3)
          annotation (Placement(transformation(extent={{84,-44},{64,-24}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Voltage_n1
          annotation (Placement(transformation(
              origin={-20,-72},
              extent={{10,-10},{-10,10}},
              rotation=270)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Voltage_n2(k=2)
          annotation (Placement(transformation(
              origin={20,-72},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.MultiPhase.Interfaces.PlugToPin_n PlugToPin_Voltage_n3(k=3)
          annotation (Placement(transformation(
              origin={58,-72},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p
          "Positive complex plug"
          annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0), iconTransformation(extent={{-110,-10},{-90,10}})));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_Current_n
          "Negative complex plug for measuring voltages"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0), iconTransformation(extent={{90,-10},{110,10}})));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_Voltage_n
          "Negative complex plug for measuring currents"
          annotation (Placement(transformation(extent={{-30,-110},{-10,-90}},
                rotation=0)));
        Modelica.Blocks.Interfaces.RealOutput P_real1 "Active power of phase 1"
          annotation (Placement(transformation(
              origin={-85,106},
              extent={{10,-5},{-10,5}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealOutput Q_reactive1
          "Reactive power of phase 1"
          annotation (Placement(transformation(
              origin={-73,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput cos_phi1
          "Power quality coefficient of phase 1"
          annotation (Placement(transformation(
              origin={-49,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi1
          "Power phasor angle of phase 1"
          annotation (Placement(transformation(
              origin={-61,106},
              extent={{10,-5},{-10,5}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealOutput P_real2 "Active power of phase 2"
          annotation (Placement(transformation(
              origin={-13,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput Q_reactive2
          "Reactive power of phase 2"
          annotation (Placement(transformation(
              origin={-1,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput cos_phi2
          "Power quality coefficient of phase 2"
          annotation (Placement(transformation(
              origin={23,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi2
          "Power phasor angle of phase 2"
          annotation (Placement(transformation(
              origin={11,106},
              extent={{10,-5},{-10,5}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealOutput P_real3 "Active power of phase 3"
          annotation (Placement(transformation(
              origin={49,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput Q_reactive3
          "Reactive power of phase 3"
          annotation (Placement(transformation(
              origin={61,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput cos_phi3
          "Power quality coefficient of phase 3"
          annotation (Placement(transformation(
              origin={85,106},
              extent={{-10,-5},{10,5}},
              rotation=90)));
        Modelica.Blocks.Interfaces.RealOutput phi3
          "Power phasor angle of phase 3"
          annotation (Placement(transformation(
              origin={73,106},
              extent={{10,-5},{-10,5}},
              rotation=270)));
      equation
        connect(PlugToPin_p1.plug_p, plug_p)
          annotation (Line(points={{-82,46},{-88,46},{-88,0},{-100,0}},   color=
               {0,0,255}));
        connect(PlugToPin_p2.plug_p, PlugToPin_p1.plug_p)
          annotation (Line(points={{-82,6},{-88,6},{-88,46},{-82,46}}, color={0,
                0,255}));
        connect(PlugToPin_p3.plug_p, PlugToPin_p2.plug_p)
          annotation (Line(points={{-82,-34},{-88,-34},{-88,6},{-82,6}}, color=
                {0,0,255}));
        connect(PlugToPin_p1.pin_p, CurrentSensor1.p)
          annotation (Line(points={{-62,46},{-54,46}}, color={0,0,255}));
        connect(PlugToPin_p2.pin_p, CurrentSensor2.p)
          annotation (Line(points={{-62,6},{-60,6},{-60,6},{-58,6},{-58,6},{-54,
                6}}, color={0,0,255}));
        connect(PlugToPin_p3.pin_p, CurrentSensor3.p)
          annotation (Line(points={{-62,-34},{-54,-34}}, color={0,0,255}));
        connect(CurrentSensor1.n, VoltageSensor1.p)
          annotation (Line(points={{-34,46},{20,46},{20,42}}, color={0,0,255}));
        connect(VoltageSensor1.p, PlugToPin_Current_n1.pin_n)
          annotation (Line(points={{20,42},{20,46},{63.8,46}}, color={0,0,255}));
        connect(CurrentSensor2.n, VoltageSensor2.p)
          annotation (Line(points={{-34,6},{20,6},{20,4}}, color={0,0,255}));
        connect(VoltageSensor2.p, PlugToPin_Current_n2.pin_n)
          annotation (Line(points={{20,4},{20,6},{63.8,6}}, color={0,0,255}));
        connect(CurrentSensor3.n, VoltageSensor3.p)
          annotation (Line(points={{-34,-34},{20,-34},{20,-36}}, color={0,0,255}));
        connect(VoltageSensor3.p, PlugToPin_Current_n3.pin_n)
          annotation (Line(points={{20,-36},{20,-34},{63.8,-34}}, color={0,0,
                255}));
        connect(PlugToPin_Current_n1.plug_n, plug_Current_n)
          annotation (Line(points={{84,46},{88,46},{88,0},{100,0}},   color={0,
                0,255}));
        connect(PlugToPin_Current_n2.plug_n, PlugToPin_Current_n1.plug_n)
          annotation (Line(points={{84,6},{88,6},{88,46},{84,46}}, color={0,0,
                255}));
        connect(PlugToPin_Current_n3.plug_n, PlugToPin_Current_n2.plug_n)
          annotation (Line(points={{84,-34},{88,-34},{88,6},{84,6}}, color={0,0,
                255}));
        connect(VoltageSensor1.n, PlugToPin_Voltage_n1.pin_n)
          annotation (Line(points={{20,22},{20,14},{-20,14},{-20,-61.8}}, color=
               {0,0,255}));
        connect(VoltageSensor2.n, PlugToPin_Voltage_n2.pin_n)
          annotation (Line(points={{20,-16},{20,-22},{0,-22},{0,-62},{20,-62},{
                20,-61.8}}, color={0,0,255}));
        connect(VoltageSensor3.n, PlugToPin_Voltage_n3.pin_n)
          annotation (Line(points={{20,-56},{58,-56},{58,-61.8}}, color={0,0,
                255}));
        connect(PlugToPin_Voltage_n1.plug_n, plug_Voltage_n)
          annotation (Line(points={{-20,-82},{-20,-91},{-20,-91},{-20,-100}},
                                                          color={0,0,255}));
        connect(PlugToPin_Voltage_n2.plug_n, PlugToPin_Voltage_n1.plug_n)
          annotation (Line(points={{20,-82},{20,-88},{-20,-88},{-20,-82}},
              color={0,0,255}));
        connect(PlugToPin_Voltage_n3.plug_n, PlugToPin_Voltage_n2.plug_n)
          annotation (Line(points={{58,-82},{58,-88},{20,-88},{20,-82}}, color=
                {0,0,255}));
        connect(VoltageSensor1.voltage_eff, PQ_sensor1.voltage_eff) annotation (Line(
            points={{8,32},{-16,32},{-16,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor1.current_eff, PQ_sensor1.current_eff) annotation (Line(
            points={{-44,34},{-44,32},{-20,32},{-20,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(VoltageSensor1.phi_voltage, PQ_sensor1.phi_voltage) annotation (Line(
            points={{32,32},{32,32},{32,48},{-24,48},{-24,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor1.phi_current, PQ_sensor1.phi_current) annotation (Line(
            points={{-44,58},{-44,60},{-36,60},{-36,56},{-28,56},{-28,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(VoltageSensor2.voltage_eff, PQ_sensor2.voltage_eff) annotation (Line(
            points={{8,-6},{6,-6},{6,50},{20,50},{20,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor2.current_eff, PQ_sensor2.current_eff) annotation (Line(
            points={{-44,-6},{-44,-10},{4,-10},{4,52},{16,52},{16,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(VoltageSensor2.phi_voltage, PQ_sensor2.phi_voltage) annotation (Line(
            points={{32,-6},{36,-6},{36,54},{12,54},{12,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor2.phi_current, PQ_sensor2.phi_current) annotation (Line(
            points={{-44,18},{-44,22},{2,22},{2,54},{8,54},{8,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(VoltageSensor3.voltage_eff, PQ_sensor3.voltage_eff) annotation (Line(
            points={{8,-46},{6,-46},{6,-30},{56,-30},{56,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor3.current_eff, PQ_sensor3.current_eff) annotation (Line(
            points={{-44,-46},{-44,-48},{-12,-48},{-12,-28},{52,-28},{52,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(VoltageSensor3.phi_voltage, PQ_sensor3.phi_voltage) annotation (Line(
            points={{32,-46},{48,-46},{48,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(CurrentSensor3.phi_current, PQ_sensor3.phi_current) annotation (Line(
            points={{-44,-22},{-44,-20},{-32,-20},{-32,-26},{44,-26},{44,58}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor1.phi, phi1) annotation (Line(
            points={{-28,82},{-28,82},{-61,82},{-61,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor1.active_power, P_real1) annotation (Line(
            points={{-16,82},{-16,84},{-85,84},{-85,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor1.reactive_power, Q_reactive1) annotation (Line(
            points={{-20,82},{-20,86},{-73,86},{-73,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor1.cos_phi, cos_phi1) annotation (Line(
            points={{-24,82},{-24,88},{-49,88},{-49,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor2.phi, phi2) annotation (Line(
            points={{8,82},{8,92},{11,92},{11,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor2.active_power, P_real2) annotation (Line(
            points={{20,82},{20,88},{-13,88},{-13,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor2.cos_phi, cos_phi2) annotation (Line(
            points={{12,82},{12,88},{23,88},{23,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(Q_reactive2, PQ_sensor2.reactive_power) annotation (Line(
            points={{-1,106},{-1,90},{16,90},{16,82}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor3.phi, phi3) annotation (Line(
            points={{44,82},{44,90},{73,90},{73,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor3.active_power, P_real3) annotation (Line(
            points={{56,82},{56,92},{49,92},{49,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor3.reactive_power, Q_reactive3) annotation (Line(
            points={{52,82},{52,92},{61,92},{61,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
        connect(PQ_sensor3.cos_phi, cos_phi3) annotation (Line(
            points={{48,82},{48,88},{85,88},{85,106}},
            color={0,0,127},
            pattern=LinePattern.Dash));
      end PQ_sensor_3ph;
      annotation (Documentation(info="<html>
<P>
This package contains sensors for electrical components for phasor
analysis:
<ul>
<li>PotentialSensor</li>
<li>VoltageSensor</li>
<li>CurrentSensor</li>
<li>PQ-sensor</li>
<li>PQ-sensor for 3-phase analysis</li>
</ul>
</P>
</html>"));
    end Sensors;

    package Sources
      "Multi-phase source components described within phasor domain"
      model SineVoltage
        "Sinusoidal voltage source for phasor analysis in symmetrical multiphase networks"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlugSrc;
        parameter Integer m(min=1)=3;
        ComplexLib.SinglePhase.Sources.SineVoltage voltageSource[m](V=V, phase=
              phase);
        parameter SI.Voltage V[m]=ones(m) "Rms values of sine waves";
        parameter SI.Angle phase[m]=-{(j - 1)/m*2*Modelica.
            Constants.pi for j in 1:m} "Phases of sine waves";
        annotation (
          Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(extent={{-150,80},{150,120}}, textString=""),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5),
              Text(
                extent={{-100,-110},{100,-70}},
                lineColor={0,0,255},
                textString="%name")}),
          Window(
            x=0.31,
            y=0.09,
            width=0.6,
            height=0.6),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{99,0}}, color={0,0,0}),
              Line(points={{50,0},{-50,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Documentation(info="<html>
Gives out a fixed m phase voltage dependent on the defined absolute value
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</html>"),DymolaStoredErrors);
      equation
        connect(voltageSource.p, plug_p.complexPin);
        connect(voltageSource.n, plug_n.complexPin);
      end SineVoltage;

      model SineCurrent
        "Sinusoidal current source for phasor analysis in symmetrical multiphase networks"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlugSrc;
        parameter Integer m(min=1)=3;
        ComplexLib.SinglePhase.Sources.SineCurrent currentSource[m](I=I, phase=
              phase);
        parameter SI.Current I[m]=ones(m) "Rms values of sine waves";
        parameter SI.Angle phase[m]=-{(j - 1)/m*2*Modelica.
            Constants.pi for j in 1:m} "Phases of sine waves";
        annotation (
          Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(extent={{-150,80},{150,120}}, textString=""),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5),
              Text(
                extent={{-100,-110},{100,-70}},
                lineColor={0,0,255},
                textString="%name"),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,50},{0,-50}}, color={0,0,0})}),
          Window(
            x=0.31,
            y=0.09,
            width=0.6,
            height=0.6),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{99,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Documentation(info="<html>
Gives out a fixed m phase voltage dependent on the defined absolute value
<dl>
<dt>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
<p>
</dl>
</html>"),DymolaStoredErrors);
      equation
        connect(currentSource.p, plug_p.complexPin);
        connect(currentSource.n, plug_n.complexPin);
      end SineCurrent;

      model SignalVoltage
        "Sinusoidal voltage source with variable rms value and phase for phasor analysis in symmetrical multiphase networks"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlugSrc;
        parameter Integer m(min=1)=3;
        ComplexLib.SinglePhase.Sources.SignalVoltage signalVoltage[m];
        Modelica.Blocks.Interfaces.RealInput V
          "Rms value used for all sine waves [V]"
          annotation (Placement(
              transformation(
              origin={0,70},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealInput phaseRef
          "Phase angle of first phase [rad]"
          annotation (Placement(
              transformation(
              origin={0,-70},
              extent={{20,-20},{-20,20}},
              rotation=270)));
        annotation (
          Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Text(extent={{-150,80},{150,120}}, textString=""),
              Line(points={{-100,0},{100,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5),
              Text(
                extent={{-100,-125},{100,-85}},
                lineColor={0,0,255},
                textString="%name")}),
          Window(
            x=0.31,
            y=0.09,
            width=0.6,
            height=0.6),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{99,0}}, color={0,0,0}),
              Line(points={{50,0},{-50,0}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Documentation(info="<html>
Gives out a fixed m phase voltage dependent on the defined absolute value
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</html>"),DymolaStoredErrors);
        SI.Angle phase[m] "Symmetrical phase angles";
      equation
        for j in 1:m loop
          phase[j] = phaseRef + (j - 1)/m*2*Modelica.Constants.pi;
          connect(V, signalVoltage[j].V);
        end for;
        signalVoltage.phase = phase;
        connect(signalVoltage.p, plug_p.complexPin);
        connect(signalVoltage.n, plug_n.complexPin);
      end SignalVoltage;

      model SignalCurrent
        "Sinusoidal current generator with variable rms value and phase for phasor analysis in symmetrical multiphase networks"
        extends ComplexLib.MultiPhase.Interfaces.TwoPlugSrc;
        parameter Integer m(min=1)=3;
        ComplexLib.SinglePhase.Sources.SignalCurrent signalCurrent[m];
        Modelica.Blocks.Interfaces.RealInput I
          "Rms value used for all sine waves [A]"
          annotation (Placement(
              transformation(
              origin={0,70},
              extent={{-20,-20},{20,20}},
              rotation=270)));
        Modelica.Blocks.Interfaces.RealInput phaseRef
          "Phase angle of first phase [rad]"
          annotation (Placement(
              transformation(
              origin={0,-70},
              extent={{20,-20},{-20,20}},
              rotation=270)));
                                 annotation (
          Icon(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{100,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Text(
                extent={{-100,-120},{100,-80}},
                lineColor={0,0,255},
                textString="%name"),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Window(
            x=0.39,
            y=0.19,
            width=0.6,
            height=0.6),
          Diagram(coordinateSystem(
              preserveAspectRatio=false,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={
              Ellipse(
                extent={{-50,50},{50,-50}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,0},{-50,0}}, color={0,0,0}),
              Line(points={{50,0},{99,0}}, color={0,0,0}),
              Line(points={{0,-50},{0,50}}, color={0,0,0}),
              Line(
                points={{-60,0},{-51.6,34.2},{-46.1,53.1},{-41.3,66.4},{-37.1,
                    74.6},{-32.9,79.1},{-28.64,79.8},{-24.42,76.6},{-20.201,
                    69.7},{-15.98,59.4},{-11.16,44.1},{-5.1,21.2},{7.5,-30.8},{
                    13,-50.2},{17.8,-64.2},{22,-73.1},{26.2,-78.4},{30.5,-80},{
                    34.7,-77.6},{38.9,-71.5},{43.1,-61.9},{47.9,-47.2},{54,-24.8},
                    {60,0}},
                color={0,0,0},
                thickness=0.5)}),
          Documentation(info="<html>
Gives out a fixed current dependent on the absolute value and phi.
<dl>
<dt>
  <dt><b>Main Authors:</b></dt>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<p>
</dl>
</html>"));
        SI.Angle phase[m] "Symmetrical phase angles";
      equation
        for j in 1:m loop
          phase[j] = phaseRef + (j - 1)/m*2*Modelica.Constants.pi;
          connect(I, signalCurrent[j].I);
        end for;
        signalCurrent.phase = phase;
        connect(signalCurrent.p, plug_p.complexPin);
        connect(signalCurrent.n, plug_n.complexPin);
      end SignalCurrent;
      annotation (Documentation(info="<html>
<P>
This package contains electrical source components for phasor analysis:
<ul>
<li>SineVoltage</li>
<li>SineCurrent</li>
<li>SignalVoltage</li>
<li>SignalCurrent</li>
</ul>
</P>
</html>"));
    end Sources;
    annotation (Documentation(info="<html>
<dl>
<dt>
<P>
The package contains subpackages for electrical components multi-phase type
for phasor domain-based AC analysis:
<ul>
<li>Basic: basic components (resistor, inductor, capacitor, conductor, transformer)</li>
<li>Interfaces: connectors and partial models</li>
<li>Sensors: sensors to measure potential, voltage, and current</li>
<li>Sources: sinusoidal voltage and current sources</li>
</ul>
</P>
<p>
  <dt><b>Main Authors:</b></dt>
<br>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@ise.fraunhofer.de</a><br>
<br>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</dl>
</html>"));
  end MultiPhase;

  package Machines
    "Library for electric machines using phasors for the electrical subsystem"
      annotation (
        Documentation(info="<HTML>
<P>
The package is helpful for modelling electric machines using
phasor domain-based AC analysis for their electrical subsystem (i.e.
analysis within phasor domain using so-called time phasors).
The mechanical subsystem is modelled within the time domain.
The electromechanical interactions are taken into account (mechanical
domain: the torque produced electrically is calculated from electrical
quantities; electrical domain: the voltages are influenced by the angle
or the angular velocity of the shaft (depending on the machine type used).
<br>
The packages are:
<ul>
<li>BasicMachines: electric machines</li>
<li>Interfaces: partial models</li>
</ul>
</P>
<p>
  <dt><b>Main Author:</b></dt>
<br>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"));
    package BasicMachines "Basic alternating current machines"
        annotation (
          Documentation(info="<html>
<P>
The package contains basic electric AC machines:
<ul>
<li>AIM_2ph: asynchronous two-phase induction machine</li>
<li>AIM_3ph: asynchronous three-phase (or multi-phase) induction machine</li>
<li>SM_2ph: synchronous two-phase machine</li>
<li>SM_3ph: synchronous three-phase (or multi-phase) machine</li>
</ul>
An additional string <tt>&ldquo;Pwr&rdquo;</tt> means that the values of active and
reactive parts of electric power are calculated and made available via
output signals.
</P>
</html>
"));
      model AIM_2ph "Simple two-phase induction machine"
        extends ComplexLib.Machines.Interfaces.PartialBasicElectricMachine2ph;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a two-phase asynchronous induction machine using phasor
domain for the electrical subsystem is based on the well-known steady-state
equivalent circuit of such a machine.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine2ph</tt> of an electric two-phase machine.
The model has four electrical connectors of type ComplexPin (i.e. it has
two electrical ports) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has two phases.
Each phase consists of a main inductance and two stray inductances as well
as a stator and a rotor resistance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the slip <tt>s</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the electrical subsystem.
</p>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{60,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Ellipse(extent={{-34,24},{-26,16}}, lineColor={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-60,100},{-30,100},{-30,24}}, color={0,0,255}),
              Line(points={{-100,60},{-100,20},{-20,20},{-8,8}}, color={0,0,255}),
              Line(
                points={{-30,16},{-30,-20},{-20,-20},{-8,-8}},
                color={0,0,255},
                pattern=LinePattern.None),
              Line(
                points={{-100,-60},{-100,-30},{20,-30},{20,-20},{8,-8}},
                color={0,0,255},
                pattern=LinePattern.None)}));

        // electrical parameters
        constant Integer m(min=1) = 2 "Number of phases";
        parameter Real n=1 "Ratio of windings";
        parameter SI.Resistance Rs=0.01 "Ohmic stator resistance per phase";
        parameter SI.Resistance Rr=0.1 "Ohmic rotor resistance per phase";
        parameter SI.Inductance Ls=1 "Stator inductance per phase";
        parameter SI.Inductance Lr=1 "Rotor inductance per phase";
        parameter Real sigma=0.001 "Stray ratio";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        Real s "Slip";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        parameter SI.Resistance Rr_=n^2*Rr
          "Rotor resistance referred to the stator";
        parameter SI.Inductance Lm=sqrt((1-sigma)*Lr*Ls) "Main inductance";
        parameter SI.Inductance Ls_sigma=Ls-Lm
          "Stator stray inductance per phase";
        parameter SI.Inductance Lr_sigma=Lr-Lm
          "Rotor stray inductance per phase";
        parameter SI.Inductance Lr_sigma_=n^2*Lr_sigma
          "Rotor stray inductance referred to the stator";
        parameter SI.Inductance Lr_=Lm+Lr_sigma_
          "Rotor inductance referred to the stator";
        // variables
        SI.AngularFrequency omegaN "Net frequency";
        SI.Resistance Rr_s;
        SI.Resistance Xm "Main reactance";
        SI.Resistance Xs "Stator reactance";
        SI.Resistance Xr "Rotor reactance";
        Real sb "Breakdown slip";
        SI.Torque Tb "Breakdown (maximum) torque";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical;
        // electrical components
      protected
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.Resistor R1[m](each final R=Rs);
        ComplexLib.SinglePhase.Basic.Inductor L1[m](each final L=Ls_sigma);
        ComplexLib.SinglePhase.Basic.Inductor L12[m](each final L=Lm);
        ComplexLib.SinglePhase.Basic.Inductor L2[m](each final L=Lr_sigma_);
        ComplexLib.SinglePhase.Basic.VariableResistor R2[m];
        Modelica.Blocks.Interfaces.RealOutput Rr_sOut[m];
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // electrical connections
        connect(p1, R1[1].p);
        connect(p2, R1[2].p);
        connect(R1.n, L1.p);
        connect(L1.n, L12.p);
        connect(L12.p, L2.p);
        connect(L2.n, R2.p);
        connect(L12.n, R2.n);
        connect(R2[1].n, n1);
        connect(R2[2].n, n2);
        // characteristic values
        Xm = omegaN*Lm;
        Xs = omegaN*Ls;
        Xr = omegaN*Lr_;
        sb = Rr_/(sigma*Xr);
        Tb = (v[1]^2+v[2]^2)*Xm^2/Xs^2/(2*omegaN*sigma*Xr);
        // slip
        omegaN = ComplexLib.Constants.omega;
                                           // angular velocity of net voltage
        omegaMech = inertiaRotor.w;        // angular velocity of rotor
        s = (omegaN-omegaMech)/omegaN;
        // rotor resistance depending on slip
        Rr_s = if abs(s)>1e-12 then Rr_/s else 1e12;
        for k in 1:m loop
          Rr_sOut[k] = Rr_s;
        end for;
        connect(R2.R, Rr_sOut);
        // complete torque, symmetric voltages assumed
        Trq = (v[1]^2+v[2]^2)*Xm^2/Xs^2/omegaN/(Rr_s+s*(sigma*Xr)^2/Rr_);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end AIM_2ph;

      model AIM_2phPwr
        "Simple two-phase induction machine with power calculation"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine2phPwr;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a two-phase asynchronous induction machine using phasor
domain for the electrical subsystem is based on the well-known steady-state
equivalent circuit of such a machine.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine2phPwr</tt> of an electric two-phase machine
with calculation of electric power.
The model has four electrical connectors of type ComplexPin (i.e. it has
two electrical ports) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has two phases.
Each phase consists of a main inductance and two stray inductances as well
as a stator and a rotor resistance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the slip <tt>s</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the electrical subsystem.
</p>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{40,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Ellipse(extent={{-34,24},{-26,16}}, lineColor={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-40,100},{-30,100},{-30,24}}, color={0,0,255}),
              Line(points={{-100,40},{-100,20},{-20,20},{-8,8}}, color={0,0,255}),
              Line(
                points={{-30,16},{-30,-20},{-20,-20},{-8,-8}},
                color={0,0,255},
                pattern=LinePattern.None),
              Line(
                points={{-100,-40},{-100,-30},{20,-30},{20,-20},{8,-8}},
                color={0,0,255},
                pattern=LinePattern.None)}));

        // electrical parameters
        constant Integer m(min=1) = 2 "Number of phases";
        parameter Real n=1 "Ratio of windings";
        parameter SI.Resistance Rs=0.01 "Ohmic stator resistance per phase";
        parameter SI.Resistance Rr=0.1 "Ohmic rotor resistance per phase";
        parameter SI.Inductance Ls=1 "Stator inductance per phase";
        parameter SI.Inductance Lr=1 "Rotor inductance per phase";
        parameter Real sigma=0.001 "Stray ratio";
        SI.AngularFrequency omegaMech "Angular velocity of rotors";
        Real s "Slip";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        parameter SI.Resistance Rr_=n^2*Rr
          "Rotor resistance referred to the stator";
        parameter SI.Inductance Lm=sqrt((1-sigma)*Lr*Ls) "Main inductance";
        parameter SI.Inductance Ls_sigma=Ls-Lm
          "Stator stray inductance per phase";
        parameter SI.Inductance Lr_sigma=Lr-Lm
          "Rotor stray inductance per phase";
        parameter SI.Inductance Lr_sigma_=n^2*Lr_sigma
          "Rotor stray inductance referred to the stator";
        parameter SI.Inductance Lr_=Lm+Lr_sigma_
          "Rotor inductance referred to the stator";
        // variables
        SI.AngularFrequency omegaN "Net frequency";
        SI.Resistance Rr_s;
        SI.Resistance Xm "Main reactance";
        SI.Resistance Xs "Stator reactance";
        SI.Resistance Xr "Rotor reactance";
        Real sb "Breakdown slip";
        SI.Torque Tb "Breakdown (maximum) torque";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical;
        // electrical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.Resistor R1[m](each final R=Rs);
        ComplexLib.SinglePhase.Basic.Inductor L1[m](each final L=Ls_sigma);
        ComplexLib.SinglePhase.Basic.Inductor L12[m](each final L=Lm);
        ComplexLib.SinglePhase.Basic.Inductor L2[m](each final L=Lr_sigma_);
        ComplexLib.SinglePhase.Basic.VariableResistor R2[m];
        Modelica.Blocks.Interfaces.RealOutput Rr_sOut[m];
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // electrical connections
        connect(p1, R1[1].p);
        connect(p2, R1[2].p);
        connect(R1.n, L1.p);
        connect(L1.n, L12.p);
        connect(L12.p, L2.p);
        connect(L2.n, R2.p);
        connect(L12.n, R2.n);
        connect(R2[1].n, n1);
        connect(R2[2].n, n2);
        // characteristic values
        Xm = omegaN*Lm;
        Xs = omegaN*Ls;
        Xr = omegaN*Lr_;
        sb = Rr_/(sigma*Xr);
        Tb = (v[1]^2+v[2]^2)*Xm^2/Xs^2/(2*omegaN*sigma*Xr);
        // slip
        omegaN = ComplexLib.Constants.omega;
                                           // angular velocity of net voltage
        omegaMech = inertiaRotor.w;        // angular velocity of rotor
        s = (omegaN-omegaMech)/omegaN;
        // rotor resistance depending on slip
        Rr_s = if abs(s)>1e-12 then Rr_/s else 1e12;
        for k in 1:m loop
          Rr_sOut[k] = Rr_s;
        end for;
        connect(R2.R, Rr_sOut);
        // complete torque, symmetric voltages assumed
        Trq = (v[1]^2+v[2]^2)*Xm^2/Xs^2/omegaN/(Rr_s+s*(sigma*Xr)^2/Rr_);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end AIM_2phPwr;

      model AIM_3ph "Simple three-phase induction machine"
        extends ComplexLib.Machines.Interfaces.PartialBasicElectricMachine3ph;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a three-phase asynchronous induction machine using phasor
domain for the electrical subsystem is based on the well-known steady-state
equivalent circuit of such a machine.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine3ph</tt> of an electric three-phase machine.
The model has two electrical connectors of type ComplexPlug (which correspond
to six connectors of type ComplexPin) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has three phases.
Each phase consists of a main inductance and two stray inductances as well
as a stator and a rotor resistance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the slip <tt>s</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the electrical subsystem.
</p>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{-60,100},{-20,100},{-20,20},{-7,7}}, color={0,0,255}),
              Line(points={{60,100},{20,100},{20,20},{7,7}}, color={0,0,255})}));

        // electrical parameters
        parameter Integer m(min=1) = 3 "Number of phases";
        parameter Real n=1 "Ratio of windings";
        parameter SI.Resistance Rs=0.01 "Ohmic stator resistance per phase";
        parameter SI.Resistance Rr=0.1 "Ohmic rotor resistance per phase";
        parameter SI.Inductance Ls=1 "Stator inductance per phase";
        parameter SI.Inductance Lr=1 "Rotor inductance per phase";
        parameter Real sigma=0.001 "Stray ratio";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        Real s "Slip";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        parameter SI.Resistance Rr_=n^2*Rr
          "Rotor resistance referred to the stator";
        parameter SI.Inductance Lm=sqrt((1-sigma)*Lr*Ls) "Main inductance";
        parameter SI.Inductance Ls_sigma=Ls-Lm
          "Stator stray inductance per phase";
        parameter SI.Inductance Lr_sigma=Lr-Lm
          "Rotor stray inductance per phase";
        parameter SI.Inductance Lr_sigma_=n^2*Lr_sigma
          "Rotor stray inductance referred to the stator";
        parameter SI.Inductance Lr_=Lm+Lr_sigma_
          "Rotor inductance referred to the stator";
        // variables
        SI.AngularFrequency omegaN "Net frequency";
        SI.Resistance Rr_s;
        SI.Resistance Xm "Main reactance";
        SI.Resistance Xs "Stator reactance";
        SI.Resistance Xr "Rotor reactance";
        Real sb "Breakdown slip";
        Real vSumSq "Sum of squares of rms values of voltages of all phases";
        SI.Torque Tb "Breakdown (maximum) torque";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical;
        // electrical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.Resistor R1[m](each final R=Rs);
        ComplexLib.SinglePhase.Basic.Inductor L1[m](each final L=Ls_sigma);
        ComplexLib.SinglePhase.Basic.Inductor L12[m](each final L=Lm);
        ComplexLib.SinglePhase.Basic.Inductor L2[m](each final L=Lr_sigma_);
        ComplexLib.SinglePhase.Basic.VariableResistor R2[m];
        Modelica.Blocks.Interfaces.RealOutput Rr_sOut[m];
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // electrical connections
        connect(plug_p.complexPin, R1.p);
        connect(R1.n, L1.p);
        connect(L1.n, L12.p);
        connect(L12.p, L2.p);
        connect(L2.n, R2.p);
        connect(L12.n, R2.n);
        connect(R2.n, plug_n.complexPin);
        // characteristic values
        Xm = omegaN*Lm;
        Xs = omegaN*Ls;
        Xr = omegaN*Lr_;
        sb = Rr_/(sigma*Xr);
        vSumSq = sum((v[j])^2 for j in 1:m);
        Tb = vSumSq*Xm^2/Xs^2/(2*omegaN*sigma*Xr);
        // slip
        omegaN = ComplexLib.Constants.omega;
                                           // angular velocity of net voltage
        omegaMech = inertiaRotor.w;        // angular velocity of rotor
        s = (omegaN-omegaMech)/omegaN;
        // rotor resistance depending on slip
        Rr_s = if abs(s)>1e-12 then Rr_/s else 1e12;
        for k in 1:m loop
          Rr_sOut[k] = Rr_s;
        end for;
        connect(R2.R, Rr_sOut);
        // complete torque, symmetric voltages assumed
        Trq = vSumSq*Xm^2/Xs^2/omegaN/(Rr_s+s*(sigma*Xr)^2/Rr_);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end AIM_3ph;

      model AIM_3phPwr "Simple three-phase induction machine"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine3phPwr;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a three-phase asynchronous induction machine using phasor
domain for the electrical subsystem is based on the well-known steady-state
equivalent circuit of such a machine.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine3phPwr</tt> of an electric three-phase machine
with power calculation.
The model has two electrical connectors of type ComplexPlug (which correspond
to six connectors of type ComplexPin) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has three phases.
Each phase consists of a main inductance and two stray inductances as well
as a stator and a rotor resistance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the slip <tt>s</tt> may alter only very slowly in comparison
with both the nominal frequency <tt>f=&omega;/(2&pi;)</tt> and the dominant
time constant of the electrical subsystem.
</p>
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{-40,100},{-20,100},{-20,20},{-7,7}}, color={0,0,255}),
              Line(points={{40,100},{20,100},{20,20},{7,7}}, color={0,0,255})}),
          DymolaStoredErrors);

        // electrical parameters
        parameter Integer m(min=1) = 3 "Number of phases";
        parameter Real n=1 "Ratio of windings";
        parameter SI.Resistance Rs=0.01 "Ohmic stator resistance per phase";
        parameter SI.Resistance Rr=0.1 "Ohmic rotor resistance per phase";
        parameter SI.Inductance Ls=1 "stator inductance per phase";
        parameter SI.Inductance Lr=1 "rotor inductance per phase";
        parameter Real sigma=0.001 "Stray ratio";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        Real s "Slip";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        parameter SI.Resistance Rr_=n^2*Rr
          "Rotor resistance referred to the stator";
        parameter SI.Inductance Lm=sqrt((1-sigma)*Lr*Ls) "Main inductance";
        parameter SI.Inductance Ls_sigma=Ls-Lm
          "Stator stray inductance per phase";
        parameter SI.Inductance Lr_sigma=Lr-Lm
          "Rotor stray inductance per phase";
        parameter SI.Inductance Lr_sigma_=n^2*Lr_sigma
          "Rotor stray inductance referred to the stator";
        parameter SI.Inductance Lr_=Lm+Lr_sigma_
          "Rotor inductance referred to the stator";
        // variables
        SI.AngularFrequency omegaN "Net frequency";
        SI.Resistance Rr_s;
        SI.Resistance Xm "Main reactance";
        SI.Resistance Xs "Stator reactance";
        SI.Resistance Xr "Rotor reactance";
        Real sb "Breakdown slip";
        Real vSumSq "Sum of squares of rms values of voltages of all phases";
        SI.Torque Tb "Breakdown (maximum) torque";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical;
        // electrical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        ComplexLib.SinglePhase.Basic.Resistor R1[m](each final R=Rs);
        ComplexLib.SinglePhase.Basic.Inductor L1[m](each final L=Ls_sigma);
        ComplexLib.SinglePhase.Basic.Inductor L12[m](each final L=Lm);
        ComplexLib.SinglePhase.Basic.Inductor L2[m](each final L=Lr_sigma_);
        ComplexLib.SinglePhase.Basic.VariableResistor R2[m];
        Modelica.Blocks.Interfaces.RealOutput Rr_sOut[m];
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // electrical connections
        connect(plug_p.complexPin, R1.p);
        connect(R1.n, L1.p);
        connect(L1.n, L12.p);
        connect(L12.p, L2.p);
        connect(L2.n, R2.p);
        connect(L12.n, R2.n);
        connect(R2.n, plug_n.complexPin);
        // characteristic values
        Xm = omegaN*Lm;
        Xs = omegaN*Ls;
        Xr = omegaN*Lr_;
        sb = Rr_/(sigma*Xr);
        vSumSq = sum((v[j])^2 for j in 1:m);
        Tb = vSumSq*Xm^2/Xs^2/(2*omegaN*sigma*Xr);
        // slip
        omegaN = ComplexLib.Constants.omega;
                                           // angular velocity of net voltage
        omegaMech = inertiaRotor.w;        // angular velocity of rotor
        s = (omegaN-omegaMech)/omegaN;
        // rotor resistance depending on slip
        Rr_s = if abs(s)>1e-12 then Rr_/s else 1e12;
        for k in 1:m loop
          Rr_sOut[k] = Rr_s;
        end for;
        connect(R2.R, Rr_sOut);
        // complete torque, symmetric voltages assumed
        Trq = vSumSq*Xm^2/Xs^2/omegaN/(Rr_s+s*(sigma*Xr)^2/Rr_);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end AIM_3phPwr;

      model SM_2ph "Simple two-phase synchronous machine"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine2ph_wBalance;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a two-phase synchronous machine using phasor
domain for the electrical subsystem is based on the behaviour of the
steady-state equivalent circuit of such a machine.
This behaviour is defined by appropriate equations.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine2ph_wBalance</tt> of an electric
two-phase machine including the current balances.<br>
The model has four electrical connectors of type ComplexPin (i.e. it has
two electrical ports) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has two phases.
Each phase consists of a constant inductance (stator's self-inductance)
and an electromagnetic force (emf) realising the effect of the rotor current
on the stator via the mutual inductance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the torque angle <tt>&delta;</tt> (also called rotor displacement angle)
may alter only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the electrical
subsystem.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{60,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Ellipse(extent={{-34,24},{-26,16}}, lineColor={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-60,100},{-30,100},{-30,24}}, color={0,0,255}),
              Line(points={{-100,60},{-100,20},{-20,20},{-8,8}}, color={0,0,255}),
              Line(
                points={{-30,16},{-30,-20},{-20,-20},{-8,-8}},
                color={0,0,255},
                pattern=LinePattern.None),
              Line(
                points={{-100,-60},{-100,-30},{20,-30},{20,-20},{8,-8}},
                color={0,0,255},
                pattern=LinePattern.None)}));

        // electrical parameters
        constant Integer m=2 "Number of phases";
        parameter Integer p=1 "Number of poles";
        parameter SI.Inductance Ls=0.01 "Stator inductance per phase";
        parameter SI.Inductance Lm=0.009 "Mutual inductance per phase";
        parameter SI.Voltage Vr=1 "Dc voltage at rotor";
        parameter SI.Resistance Rr=1 "Rotor resistance";
        parameter Real eps=1e-12 "To avoid division by zero";
        SI.Current Ir "Rotor current";
        SI.Voltage Ef
          "Mutual voltage source, depending on rotor current and angular difference between shaft and field";
        SI.AngularFrequency omegaN "Angular frequency of net voltage";
        SI.AngularFrequency omegaField "Angular frequency of field";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        SI.Torque Tp "Pull-out (maximum) torque";
        SI.Angle gamma "Angular difference between shaft and field";
        SI.Angle delta "Torque angle";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      //protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        // variables
        SI.Resistance Xs "Stator (or synchronous) reactance";
        SI.Resistance Xm "Main reactance";
        SI.Angle phase_Vs "Phase of first stator voltage";
        SI.Angle phase_Is "Phase of first stator current";
        SI.Angle phase_Ef "Phase of back-emf voltage";
        SI.Angle phase "Phase of stator voltage with respect to stator current";
        SI.Angle phiN "Angle of net voltage";
        SI.Angle phiField "Angle of rotating field";
        SI.Angle phiMech "Angle of shaft";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical
          "Electrically produced torque";
        // electromechanical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // characteristic values
        Ir = Vr/Rr;
        omegaN = ComplexLib.Constants.omega;
        omegaField = omegaN/p;
        omegaMech = inertiaRotor.w;
        Xs = omegaN*Ls;
        Xm = omegaN*Lm;
        Ef = Xm*Ir;
        phase_Vs = ComplexLib.Math.atan2(vIm[1], vRe[1]);
        phiN = omegaN*time+phase_Vs;
        phiField = phiN/p;
        phiMech = inertiaRotor.phi;
        gamma = phiMech-phiField;
        for j in 1:m loop
          vRe[j] = -Xs*iIm[j]-Ef*(iIm[j]/(i[j]+eps)*cos(gamma)+iRe[j]/(i[j]+eps)*sin(gamma));
          vIm[j] =  Xs*iRe[j]+Ef*(iRe[j]/(i[j]+eps)*cos(gamma)-iIm[j]/(i[j]+eps)*sin(gamma));
        end for;
        phase_Is = ComplexLib.Math.atan2(iIm[1], iRe[1]);
        phase_Ef = Modelica.Constants.pi/2+phase_Is+gamma;
        delta = phase_Ef-phase_Vs;
        phase = phase_Vs-phase_Is;
        // complete torque, symmetric voltages assumed
        Tp = p*(v[1]*Ef+v[2]*Ef)/(omegaN*omegaN*Ls);
        Trq = -Tp*sin(delta);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end SM_2ph;

      model SM_2phPwr
        "Simple two-phase synchronous machine with power calculation"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine2phPwr_wBalance;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a two-phase synchronous machine using phasor
domain for the electrical subsystem is based on the behaviour of the
steady-state equivalent circuit of such a machine.
This behaviour is defined by appropriate equations.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine2phPwr_wBalance</tt> of an electric
two-phase machine including both the current balances and the power
calculation.<br>
The model has four electrical connectors of type ComplexPin (i.e. it has
two electrical ports) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has two phases.
Each phase consists of a constant inductance (stator's self-inductance)
and an electromagnetic force (emf) realising the effect of the rotor current
on the stator via the mutual inductance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the torque angle <tt>&delta;</tt> (also called rotor displacement angle)
may alter only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the electrical
subsystem.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{40,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Ellipse(extent={{-34,24},{-26,16}}, lineColor={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-40,100},{-30,100},{-30,24}}, color={0,0,255}),
              Line(points={{-100,40},{-100,20},{-20,20},{-8,8}}, color={0,0,255}),
              Line(
                points={{-30,16},{-30,-20},{-20,-20},{-8,-8}},
                color={0,0,255},
                pattern=LinePattern.None),
              Line(
                points={{-100,-40},{-100,-30},{20,-30},{20,-20},{8,-8}},
                color={0,0,255},
                pattern=LinePattern.None)}));

        // electrical parameters
        constant Integer m=2 "Number of phases";
        parameter Integer p=1 "Number of poles";
        parameter SI.Inductance Ls=0.01 "Stator inductance per phase";
        parameter SI.Inductance Lm=0.009 "Mutual inductance per phase";
        parameter SI.Voltage Vr=1 "Dc voltage at rotor";
        parameter SI.Resistance Rr=1 "Rotor resistance";
        parameter Real eps=1e-12 "To avoid division by zero";
        SI.Current Ir "Rotor current";
        SI.Voltage Ef
          "Mutual voltage source, depending on rotor current and angular difference between shaft and field";
        SI.AngularFrequency omegaN "Angular frequency of net voltage";
        SI.AngularFrequency omegaField "Angular frequency of field";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        SI.Torque Tp "Pull-out (maximum) torque";
        SI.Angle gamma "Angular difference between shaft and field";
        SI.Angle delta "Torque angle";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      //protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        // variables
        SI.Resistance Xs "Stator (or synchronous) reactance";
        SI.Resistance Xm "Main reactance";
        SI.Angle phase_Vs "Phase of first stator voltage";
        SI.Angle phase_Is "Phase of first stator current";
        SI.Angle phase_Ef "Phase of back-emf voltage";
        SI.Angle phase "Phase of stator voltage with respect to stator current";
        SI.Angle phiN "Angle of net voltage";
        SI.Angle phiField "Angle of rotating field";
        SI.Angle phiMech "Angle of shaft";
       // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical
          "Electrically produced torque";
        // electromechanical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // characteristic values
        Ir = Vr/Rr;
        omegaN = ComplexLib.Constants.omega;
        omegaField = omegaN/p;
        omegaMech = inertiaRotor.w;
        Xs = omegaN*Ls;
        Xm = omegaN*Lm;
        Ef = Xm*Ir;
        phase_Vs = ComplexLib.Math.atan2(vIm[1], vRe[1]);
        phiN = omegaN*time+phase_Vs;
        phiField = phiN/p;
        phiMech = inertiaRotor.phi;
        gamma = phiMech-phiField;
        for j in 1:m loop
          vRe[j] = -Xs*iIm[j]-Ef*(iIm[j]/(i[j]+eps)*cos(gamma)+iRe[j]/(i[j]+eps)*sin(gamma));
          vIm[j] =  Xs*iRe[j]+Ef*(iRe[j]/(i[j]+eps)*cos(gamma)-iIm[j]/(i[j]+eps)*sin(gamma));
        end for;
        phase_Is = ComplexLib.Math.atan2(iIm[1], iRe[1]);
        phase_Ef = Modelica.Constants.pi/2+phase_Is+gamma;
        delta = phase_Ef-phase_Vs;
        phase = phase_Vs-phase_Is;
        // complete torque, symmetric voltages assumed
        Tp = p*(v[1]*Ef+v[2]*Ef)/(omegaN*omegaN*Ls);
        Trq = -Tp*sin(delta);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end SM_2phPwr;

      model SM_3ph "Simple three-phase synchronous machine"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine3ph_wBalance;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a three-phase synchronous machine using phasor
domain for the electrical subsystem is based on the behaviour of the
steady-state equivalent circuit of such a machine.
This behaviour is defined by appropriate equations.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine3ph_wBalance</tt> of an electric
three-phase machine including the current balances.<br>
The model has two electrical connectors of type ComplexPlug (which correspond
to six connectors of type ComplexPin) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has three phases if the default value of the
'number of phases'-parameter <tt>m</tt> is used.
In order to model a system with different number of phases, the
'number of phases'-parameter has to be changed in all
appearing multi-phase components and connectors.<br>
Each phase consists of a constant inductance (stator's self-inductance)
and an electromagnetic force (emf) realising the effect of the rotor current
on the stator via the mutual inductance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the torque angle <tt>&delta;</tt> (also called rotor displacement angle)
may alter only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the electrical
subsystem.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{60,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-60,100},{-20,100},{-20,20},{-8,8}}, color={0,0,255})}));
        // electrical parameters
        parameter Integer m(min=1) = 3 "Number of phases";
        parameter Integer p=1 "Number of poles";
        parameter SI.Inductance Ls=0.01 "Stator inductance per phase";
        parameter SI.Inductance Lm=0.009 "Mutual inductance per phase";
        parameter SI.Voltage Vr=1 "Dc voltage at rotor";
        parameter SI.Resistance Rr=1 "Rotor resistance";
        parameter Real eps=1e-12 "To avoid division by zero";
        SI.Current Ir "Rotor current";
        SI.Voltage Ef
          "Mutual voltage source, depending on rotor current and angular difference between shaft and field";
        SI.AngularFrequency omegaN "Angular frequency of net voltage";
        SI.AngularFrequency omegaField "Angular frequency of field";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        Real vSum "Sum of rms values of voltages of all phases";
        SI.Torque Tp "Pull-out (maximum) torque";
        SI.Angle gamma "Angular difference between shaft and field";
        SI.Angle delta "Torque angle";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      //protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        // variables
        SI.Resistance Xs "Stator (or synchronous) reactance";
        SI.Resistance Xm "Main reactance";
        SI.Angle phase_Vs "Phase of first stator voltage";
        SI.Angle phase_Is "Phase of first stator current";
        SI.Angle phase_Ef "Phase of back-emf voltage";
        SI.Angle phase "Phase of stator voltage with respect to stator current";
        SI.Angle phiN "Angle of net voltage";
        SI.Angle phiField "Angle of rotating field";
        SI.Angle phiMech "Angle of shaft";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical
          "Electrically produced torque";
        // electromechanical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // characteristic values
        Ir = Vr/Rr;
        omegaN = ComplexLib.Constants.omega;
        omegaField = omegaN/p;
        omegaMech = inertiaRotor.w;
        Xs = omegaN*Ls;
        Xm = omegaN*Lm;
        Ef = Xm*Ir;
        phase_Vs = ComplexLib.Math.atan2(vIm[1], vRe[1]);
        phiN = omegaN*time+phase_Vs;
        phiField = phiN/p;
        phiMech = inertiaRotor.phi;
        gamma = phiMech-phiField;
        for j in 1:m loop
          vRe[j] = -Xs*iIm[j]-Ef*(iIm[j]/(i[j]+eps)*cos(gamma)+iRe[j]/(i[j]+eps)*sin(gamma));
          vIm[j] =  Xs*iRe[j]+Ef*(iRe[j]/(i[j]+eps)*cos(gamma)-iIm[j]/(i[j]+eps)*sin(gamma));
        end for;
        phase_Is = ComplexLib.Math.atan2(iIm[1], iRe[1]);
        phase_Ef = Modelica.Constants.pi/2+phase_Is+gamma;
        delta = phase_Ef-phase_Vs;
        phase = phase_Vs-phase_Is;
        // complete torque, symmetric voltages assumed
        vSum = sum(v[j] for j in 1:m);
        Tp = p*vSum*Ef/(omegaN*omegaN*Ls);
        Trq = -Tp*sin(delta);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end SM_3ph;

      model SM_3phPwr
        "Simple three-phase synchronous machine with power calculation"
        extends
          ComplexLib.Machines.Interfaces.PartialBasicElectricMachine3phPwr_wBalance;
        annotation (
          Documentation(info="<html>
<P>
This approximation of a three-phase synchronous machine using phasor
domain for the electrical subsystem is based on the behaviour of the
steady-state equivalent circuit of such a machine.
This behaviour is defined by appropriate equations.
The machine is an extension of the partial Interface package model
<tt>PartialBasicElectricMachine3phPwr_wBalance</tt> of an electric
three-phase machine including both the current balances and the power
calculation.<br>
The model has two electrical connectors of type ComplexPlug (which correspond
to six connectors of type ComplexPin) and one mechanical rotational flange.
The stator is assumed to be fixed in the housing.<br><br>
The electrical submodel has three phases if the default value of the
'number of phases'-parameter <tt>m</tt> is used.
In order to model a system with different number of phases, the
'number of phases'-parameter has to be changed in all
appearing multi-phase components and connectors.<br>
Each phase consists of a constant inductance (stator's self-inductance)
and an electromagnetic force (emf) realising the effect of the rotor current
on the stator via the mutual inductance.
All inductances are assumed to be ideal (electrically linear, no
saturation).<br>
The mechanical submodel contains a shaft which is fixed to the rotor.<br><br>
Using this model, one can carry out steady-state or quasi-stationary
investigations of the electrical subsystem.
The mechanical subsystem may show transient behaviour which must be
sufficiently slow.
<P>
<b>Attention!!!</b><br>
To ensure that the phasor domain-based model works in a quasi-stationary
mode, the torque angle <tt>&delta;</tt> (also called rotor displacement angle)
may alter only very slowly in comparison with both the nominal frequency
<tt>f=&omega;/(2&pi;)</tt> and the dominant time constant of the electrical
subsystem.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Line(points={{10,0},{40,0}}, color={0,0,0}),
              Line(points={{-10,0},{-60,0},{-60,-100}}, color={0,0,0}),
              Rectangle(
                extent={{-9,-1},{9,1}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Line(points={{40,100},{20,100},{20,20},{7,7}}, color={0,0,255}),
              Rectangle(
                extent={{-30,26},{-22,16}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-40,100},{-20,100},{-20,20},{-8,8}}, color={0,0,255})}));
        // electrical parameters
        parameter Integer m(min=1) = 3 "Number of phases";
        parameter Integer p=1 "Number of poles";
        parameter SI.Inductance Ls=0.01 "Stator inductance per phase";
        parameter SI.Inductance Lm=0.009 "Mutual inductance per phase";
        parameter SI.Voltage Vr=1 "Dc voltage at rotor";
        parameter SI.Resistance Rr=1 "Rotor resistance";
        parameter Real eps=1e-12 "To avoid division by zero";
        SI.Current Ir "Rotor current";
        SI.Voltage Ef
          "Mutual voltage source, depending on rotor current and angular difference between shaft and field";
        SI.AngularFrequency omegaN "Angular frequency of net voltage";
        SI.AngularFrequency omegaField "Angular frequency of field";
        SI.AngularFrequency omegaMech "Angular velocity of rotor";
        Real vSum "Sum of rms values of voltages of all phases";
        SI.Torque Tp "Pull-out (maximum) torque";
        SI.Angle gamma "Angular difference between shaft and field";
        SI.Angle delta "Torque angle";
        SI.Torque Trq "Torque produced electrically";
        SI.Power P_mech "Mechanical power";
      //protected
        parameter Integer k(final min=1, final max=m) = 1 "Phase index";
        // variables
        SI.Resistance Xs "Stator (or synchronous) reactance";
        SI.Resistance Xm "mMain reactance";
        SI.Angle phase_Vs "Phase of first stator voltage";
        SI.Angle phase_Is "Phase of first stator current";
        SI.Angle phase_Ef "Phase of back-emf voltage";
        SI.Angle phase "Phase of stator voltage with respect to stator current";
        SI.Angle phiN "Angle of net voltage";
        SI.Angle phiField "Angle of rotating field";
        SI.Angle phiMech "Angle of shaft";
        // outputs
        Modelica.Blocks.Interfaces.RealOutput Trq_electrical
          "Electrically produced torque";
        // electromechanical components
        ComplexLib.Machines.Interfaces.AirGap airgap
          annotation (Placement(transformation(
              origin={0,0},
              extent={{-10,-10},{10,10}},
              rotation=270)));
      equation
        // mechanical connections
        connect(airgap.flange_a, inertiaRotor.flange_a);
        connect(airgap.support, internalSupport);
        // characteristic values
        Ir = Vr/Rr;
        omegaN = ComplexLib.Constants.omega;
        omegaField = omegaN/p;
        omegaMech = inertiaRotor.w;
        Xs = omegaN*Ls;
        Xm = omegaN*Lm;
        Ef = Xm*Ir;
        phase_Vs = ComplexLib.Math.atan2(vIm[1], vRe[1]);
        phiN = omegaN*time+phase_Vs;
        phiField = phiN/p;
        phiMech = inertiaRotor.phi;
        gamma = phiMech-phiField;
        for j in 1:m loop
          vRe[j] = -Xs*iIm[j]-Ef*(iIm[j]/(i[j]+eps)*cos(gamma)+iRe[j]/(i[j]+eps)*sin(gamma));
          vIm[j] =  Xs*iRe[j]+Ef*(iRe[j]/(i[j]+eps)*cos(gamma)-iIm[j]/(i[j]+eps)*sin(gamma));
        end for;
        phase_Is = ComplexLib.Math.atan2(iIm[1], iRe[1]);
        phase_Ef = Modelica.Constants.pi/2+phase_Is+gamma;
        delta = phase_Ef-phase_Vs;
        phase = phase_Vs-phase_Is;
        // complete torque, symmetric voltages assumed
        vSum = sum(v[j] for j in 1:m);
        Tp = p*vSum*Ef/(omegaN*omegaN*Ls);
        Trq = -Tp*sin(delta);
        P_mech = omegaMech*Trq;
        Trq_electrical = Trq;
        connect(airgap.Trq, Trq_electrical);
      end SM_3phPwr;
    end BasicMachines;

    package Interfaces "Partial models for AC machines"
        annotation (
          Documentation(info="<html>
<P>
The package contains partial models of electric AC machines:
<ul>
<li>airgap</li>
<li>partial basic machine</li>
</ul>
and
<ul>
<li>partial basic electric machine</li>
</ul>
<dd>with <br>
    &mdash; <tt>2ph</tt> denoting a two-phase machine<br>
    &mdash; <tt>3ph</tt> denoting a three-phase (or a multi-phase) machine<br>
    &mdash; <tt>Pwr</tt> denoting a machine with calculation of complex power<br>
    &mdash; <tt>wBalance</tt> meaning that the balance of current phasors is included
</dd>
</P>
</html>
"));
      model AirGap "Airgap of an electric machine"
        Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
          "First mechanical flange"
          annotation (Placement(transformation(extent={{-10,90},{10,110}},
                rotation=0)));
        Modelica.Mechanics.Rotational.Interfaces.Flange_a support
          "Second mechanical flange"
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
The partial model of an airgap is suitable for rotating electric machines.
The model contains two mechanical connectors (1D rotational flanges).
The (electrically produced) torque is defined by an input signal.
This torque takes effect on both flanges.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                  graphics),
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Ellipse(
                extent={{-90,90},{90,-92}},
                lineColor={0,0,255},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(extent={{-80,80},{80,-80}}, lineColor={0,0,255}),
              Rectangle(
                extent={{-10,90},{10,-80}},
                lineColor={0,0,0},
                fillPattern=FillPattern.VerticalCylinder,
                fillColor={128,128,128}),
              Text(
                extent={{-150,-90},{150,-150}},
                lineColor={0,0,255},
                textString="%name")}));
        Modelica.Blocks.Interfaces.RealInput Trq
          "Electrically produced torque in N.m";
      equation
        // effect of electrically produced torque
        flange_a.tau = -Trq;
        support.tau = Trq;
      end AirGap;

      partial model PartialBasicMachine
        "Basic model for generalized electric machines"
        parameter Modelica.SIunits.Inertia J_Rotor=1
          "Rotor's moment of inertia";
        Modelica.Mechanics.Rotational.Components.Inertia inertiaRotor(
                                                           final J=J_Rotor)
          annotation (Placement(transformation(
              origin={50,0},
              extent={{10,10},{-10,-10}},
              rotation=180)));
        Modelica.Mechanics.Rotational.Components.Fixed fixedHousing(
                                                         final phi0=0)
          annotation (Placement(transformation(extent={{-70,-110},{-50,-90}},
                rotation=0)));
        Modelica.Mechanics.Rotational.Interfaces.Flange_a shaft
          "Flange at shaft"
          annotation (Placement(transformation(extent={{90,-10},{110,10}},
                rotation=0)));
      protected
        Modelica.Mechanics.Rotational.Interfaces.Flange_b internalSupport;
        annotation (
          Documentation(info="<html>
<P>
This partial model is suitable to implement generalized rotating
electric machine.
It consists of an internal support which is fixed in a housing at a given
angle as well as of a shaft having an inertia and being able to rotate.
The shaft may be connected to other mechanical components via rotational
flange.
</P>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Line(points={{60,0},{100,0}},
                  color={0,0,0})}),
          Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Rectangle(
                extent={{-40,60},{80,-60}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={0,128,255}),
              Rectangle(
                extent={{-40,60},{-60,-60}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={128,128,128}),
              Rectangle(
                extent={{80,10},{100,-10}},
                lineColor={0,0,0},
                fillPattern=FillPattern.HorizontalCylinder,
                fillColor={95,95,95}),
              Rectangle(
                extent={{-40,70},{40,50}},
                lineColor={95,95,95},
                fillColor={95,95,95},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-50,-90},{-40,-90},{-10,-20},{40,-20},{70,-90},{80,-90},
                    {80,-100},{-50,-100},{-50,-90}},
                lineColor={0,0,0},
                fillColor={0,0,0},
                fillPattern=FillPattern.Solid),
              Text(
                extent={{-150,-120},{150,-180}},
                lineColor={0,0,255},
                textString="%name")}));
      equation
        connect(inertiaRotor.flange_b, shaft);
        connect(internalSupport,fixedHousing.flange);
      end PartialBasicMachine;

      partial model PartialBasicElectricMachine2ph
        "Basic model for two-phase electric machines (no current phasor balance, no power calculation)"
        extends PartialBasicMachine;
        constant Integer m = 2 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p1
          "Positive complex pin no.1"
          annotation (Placement(transformation(extent={{-110,50},{-90,70}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p2
          "Positive complex pin no.2"
          annotation (Placement(transformation(extent={{50,90},{70,110}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n1
          "Negative complex pin no.1"
          annotation (Placement(transformation(extent={{-110,-70},{-90,-50}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n2
          "Negative complex pin no.2"
          annotation (Placement(transformation(extent={{-70,90},{-50,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a two-phase machine.
The electrical subsystem contains four electrical pins of type
ComplexPin.<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does not include any current phasor balance or any power calculation.<br><br>
<b>Remark:</b><br>
This partial model is suitable only for modeling two-phase machines.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(points={{-50,100},{-20,100},{-20,70}}, color={0,0,255}),
              Line(points={{50,100},{20,100},{20,70}}, color={0,0,255}),
              Line(points={{-60,-20},{-100,-20},{-100,-50}}, color={0,0,255}),
              Line(points={{-100,50},{-100,20},{-60,20}}, color={0,0,255})}));
      equation
        vRe[1] = p1.vRe - n1.vRe;
        vRe[2] = p2.vRe - n2.vRe;
        vIm[1] = p1.vIm - n1.vIm;
        vIm[2] = p2.vIm - n2.vIm;
        iRe[1] = p1.iRe;
        iRe[2] = p2.iRe;
        iIm[1] = p1.iIm;
        iIm[2] = p2.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
        end for;
      end PartialBasicElectricMachine2ph;

      partial model PartialBasicElectricMachine2phPwr
        "Basic model for two-phase electric machines (no current phasor balance, but using power calculation)"
        extends PartialBasicMachine;
        constant Integer m = 2 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        ComplexLib.Interfaces.ComplexOutput complexPwr1
          "Complex value of power of phase 1"
          annotation (Placement(transformation(extent={{-100,-90},{-120,-70}},
                rotation=0)));
        ComplexLib.Interfaces.ComplexOutput complexPwr2
          "Complex value of power of phase 2"
          annotation (Placement(transformation(
              origin={-80,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p1
          "Positive complex pin no.1"
          annotation (Placement(transformation(extent={{-110,30},{-90,50}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p2
          "Positive complex pin no.2"
          annotation (Placement(transformation(extent={{30,90},{50,110}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n1
          "Negative complex pin no.1"
          annotation (Placement(transformation(extent={{-110,-50},{-90,-30}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n2
          "Negative complex pin no.2"
          annotation (Placement(transformation(extent={{-50,90},{-30,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a two-phase machine.
The electrical subsystem contains four electrical pins of type
ComplexPin.<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does not include any current phasor balance.
Two values of active and reactive power (for each branch)
are computed and made available via two output signals.<br><br>
<b>Remark:</b><br>
This partial model is suitable only for modeling two-phase machines.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(points={{-30,100},{-20,100},{-20,70}}, color={0,0,255}),
              Line(points={{30,100},{20,100},{20,70}}, color={0,0,255}),
              Line(points={{-100,30},{-100,20},{-60,20}}, color={0,0,255}),
              Line(points={{-60,-20},{-100,-20},{-100,-30}}, color={0,0,255})}));
      equation
        vRe[1] = p1.vRe - n1.vRe;
        vRe[2] = p2.vRe - n2.vRe;
        vIm[1] = p1.vIm - n1.vIm;
        vIm[2] = p2.vIm - n2.vIm;
        iRe[1] = p1.iRe;
        iRe[2] = p2.iRe;
        iIm[1] = p1.iIm;
        iIm[2] = p2.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
          activePwr[j] = v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr1.real = activePwr[1];
        complexPwr1.im = idlePwr[1];
        complexPwr2.real = activePwr[2];
        complexPwr2.im = idlePwr[2];
      end PartialBasicElectricMachine2phPwr;

      partial model PartialBasicElectricMachine3ph
        "Basic model for three-phase electric machines (no current phasor balance, no power calculation)"
        extends PartialBasicMachine;
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{50,90},{70,110}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{-70,90},{-50,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a three-phase machine (if the default value of the
'number of phases'-parameter <tt>m</tt> is used).
The electrical subsystem contains two electrical plugs of type
ComplexPlug (meaning six electrical pins of type ComplexPin).<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does not include any current phasor balance or any power calculation.<br><br>
<b>Remark:</b><br>
This partial model is suitable for modeling multi-phase machines in
general.
It is not restricted to the well-known three-phase machines.
In order to model a system with different number of phases, the
'number of phases'-parameter <tt>m</tt> has to be changed in all
appearing multi-phase components and connectors.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={Line(points={{-50,100},{-20,100},{-20,
                    70}}, color={0,0,255}), Line(points={{50,100},{20,100},{20,
                    70}}, color={0,0,255})}));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_p.complexPin.iRe;
        iIm = plug_p.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
        end for;
      end PartialBasicElectricMachine3ph;

      partial model PartialBasicElectricMachine3phPwr
        "Basic model for three-phase electric machines (no current phasor balance, but using power calculation)"
        extends PartialBasicMachine;
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        ComplexLib.Interfaces.ComplexOutput complexPwr[m]
          "Complex values of power"
          annotation (Placement(transformation(
              origin={-80,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{30,90},{50,110}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{-50,90},{-30,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a three-phase machine (if the default value of the
'number of phases'-parameter <tt>m</tt> is used).
The electrical subsystem contains two electrical plugs of type
ComplexPlug (meaning six electrical pins of type ComplexPin).<br>
The rms values of branch voltages and branch currents are calculated from the
corresponding phasors.
The model does not include any current phasor balance.
Three values of active and reactive power (for each branch)
are computed and made available via three output signals.<br><br>
<b>Remark:</b><br>
This partial model is suitable for modeling multi-phase machines in
general.
It is not restricted to the well-known three-phase machines.
In order to model a system with different number of phases, the
'number of phases'-parameter <tt>m</tt> has to be changed in all
appearing multi-phase components and connectors.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={Line(points={{-30,100},{-20,100},{-20,
                    70}}, color={0,0,255}), Line(points={{30,100},{20,100},{20,
                    70}}, color={0,0,255})}));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_p.complexPin.iRe;
        iIm = plug_p.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
          activePwr[j] = v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr.real = activePwr;
        complexPwr.im = idlePwr;
      end PartialBasicElectricMachine3phPwr;

      partial model PartialBasicElectricMachine2ph_wBalance
        "Basic model for two-phase electric machines (using current phasor balance, but no power calculation)"
        extends PartialBasicMachine;
        constant Integer m = 2 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p1
          "Positive complex pin no.1"
          annotation (Placement(transformation(extent={{-110,50},{-90,70}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p2
          "Positive complex pin no.2"
          annotation (Placement(transformation(extent={{50,90},{70,110}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n1
          "Negative complex pin no.1"
          annotation (Placement(transformation(extent={{-110,-70},{-90,-50}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n2
          "Negative complex pin no.2"
          annotation (Placement(transformation(extent={{-70,90},{-50,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a two-phase machine.
The electrical subsystem contains four electrical pins of type
ComplexPin.<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does include the current phasor balance.
Therefore, models being extended from <tt>PartialBasicElectricMachine2ph_wBalance</tt>
must not contain any internal electrical components.
The behaviour of such models has to be defined by equations.
The model does not include any power calculation.<br><br>
<b>Remark:</b><br>
This partial model is suitable only for modeling two-phase machines.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(points={{-50,100},{-20,100},{-20,70}}, color={0,0,255}),
              Line(points={{50,100},{20,100},{20,70}}, color={0,0,255}),
              Line(points={{-60,-20},{-100,-20},{-100,-50}}, color={0,0,255}),
              Line(points={{-100,50},{-100,20},{-60,20}}, color={0,0,255})}));
      equation
        vRe[1] = p1.vRe - n1.vRe;
        vRe[2] = p2.vRe - n2.vRe;
        vIm[1] = p1.vIm - n1.vIm;
        vIm[2] = p2.vIm - n2.vIm;
        iRe[1] = p1.iRe;
        iRe[2] = p2.iRe;
        iIm[1] = p1.iIm;
        iIm[2] = p2.iIm;
        0 = p1.iRe + n1.iRe;
        0 = p1.iIm + n1.iIm;
        0 = p2.iRe + n2.iRe;
        0 = p2.iIm + n2.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
        end for;
      end PartialBasicElectricMachine2ph_wBalance;

      partial model PartialBasicElectricMachine2phPwr_wBalance
        "Basic model for two-phase electric machines (using current phasor balance and power calculation)"
        extends PartialBasicMachine;
        constant Integer m = 2 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        ComplexLib.Interfaces.ComplexOutput complexPwr1
          "Complex value of power of phase 1"
          annotation (Placement(transformation(extent={{-100,-90},{-120,-70}},
                rotation=0)));
        ComplexLib.Interfaces.ComplexOutput complexPwr2
          "Complex value of power of phase 2"
          annotation (Placement(transformation(
              origin={-80,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p1
          "Positive complex pin no.1"
          annotation (Placement(transformation(extent={{-110,30},{-90,50}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.PosComplexPin p2
          "Positive complex pin no.21"
          annotation (Placement(transformation(extent={{30,90},{50,110}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n1
          "Negative complex pin no.1"
          annotation (Placement(transformation(extent={{-110,-50},{-90,-30}},
                rotation=0)));
        ComplexLib.SinglePhase.Interfaces.NegComplexPin n2
          "Negative complex pin no.2"
          annotation (Placement(transformation(extent={{-50,90},{-30,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a two-phase machine.
The electrical subsystem contains four electrical pins of type
ComplexPin.<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does include the current phasor balance.
Therefore, models being extended from <tt>PartialBasicElectricMachine2phPwr_wBalance</tt>
must not contain any internal electrical components.
The behaviour of such models has to be defined by equations.
Two values of active and reactive power (for each branch)
are computed and made available via two output signals.<br><br>
<b>Remark:</b><br>
This partial model is suitable only for modeling two-phase machines.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={
              Line(points={{-50,100},{-20,100},{-20,70}}, color={0,0,255}),
              Line(points={{50,100},{20,100},{20,70}}, color={0,0,255}),
              Line(points={{-60,-20},{-100,-20},{-100,-50}}, color={0,0,255}),
              Line(points={{-100,50},{-100,20},{-60,20}}, color={0,0,255})}));
      equation
        vRe[1] = p1.vRe - n1.vRe;
        vRe[2] = p2.vRe - n2.vRe;
        vIm[1] = p1.vIm - n1.vIm;
        vIm[2] = p2.vIm - n2.vIm;
        iRe[1] = p1.iRe;
        iRe[2] = p2.iRe;
        iIm[1] = p1.iIm;
        iIm[2] = p2.iIm;
        0 = p1.iRe + n1.iRe;
        0 = p1.iIm + n1.iIm;
        0 = p2.iRe + n2.iRe;
        0 = p2.iIm + n2.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
          activePwr[j] = v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr1.real = activePwr[1];
        complexPwr1.im = idlePwr[1];
        complexPwr2.real = activePwr[2];
        complexPwr2.im = idlePwr[2];
      end PartialBasicElectricMachine2phPwr_wBalance;

      partial model PartialBasicElectricMachine3ph_wBalance
        "Basic model for three-phase electric machines (using current phasor balance, but no power calculation)"
        extends PartialBasicMachine;
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{50,90},{70,110}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{-70,90},{-50,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a three-phase machine (if the default value of the
'number of phases'-parameter <tt>m</tt> is used).
The electrical subsystem contains two electrical plugs of type
ComplexPlug (meaning six electrical pins of type ComplexPin).<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does include the current phasor balance.
Therefore, models being extended from <tt>PartialBasicElectricMachine3ph_wBalance</tt>
must not contain any internal electrical components.
The behaviour of such models has to be defined by equations.
The model does not include any power calculation.<br><br>
<b>Remark:</b><br>
This partial model is suitable for modeling multi-phase machines in
general.
It is not restricted to the well-known three-phase machines.
In order to model a system with different number of phases, the
'number of phases'-parameter <tt>m</tt> has to be changed in all
appearing multi-phase components and connectors.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={Line(points={{-50,100},{-20,100},{-20,
                    70}}, color={0,0,255}), Line(points={{50,100},{20,100},{20,
                    70}}, color={0,0,255})}));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_p.complexPin.iRe;
        iIm = plug_p.complexPin.iIm;
        zeros(m) = plug_p.complexPin.iRe + plug_n.complexPin.iRe;
        zeros(m) = plug_p.complexPin.iIm + plug_n.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
        end for;
      end PartialBasicElectricMachine3ph_wBalance;

      partial model PartialBasicElectricMachine3phPwr_wBalance
        "Basic model for three-phase electric machines (using current phasor balance and power calculation)"
        extends PartialBasicMachine;
        parameter Integer m(min=1) = 3 "Number of phases";
        SI.Voltage v[m] "Voltages between the two plugs";
        SI.Voltage vRe[m] "Active parts of voltage phasors";
        SI.Voltage vIm[m] "Reactive parts of voltage phasors";
        SI.Current i[m] "Currents flowing into positive plug";
        SI.Current iRe[m] "Active parts of current phasors";
        SI.Current iIm[m] "Reactive parts of current phasors";
        SI.Angle phi[m] "Angles between voltage and current phasors";
        SI.Angle phi_v[m] "Angles of voltage phasors";
        SI.Angle phi_i[m] "Angles of current phasors";
        SI.Power activePwr[m] "Active power of phase";
        SI.Power idlePwr[m] "Reactive power of phase";
        ComplexLib.Interfaces.ComplexOutput complexPwr[m]
          "Complex values of power"
          annotation (Placement(transformation(
              origin={-80,110},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        ComplexLib.MultiPhase.Interfaces.PosComplexPlug plug_p(final m=m)
          "Positive complex plug"
          annotation (Placement(transformation(extent={{30,90},{50,110}},
                rotation=0)));
        ComplexLib.MultiPhase.Interfaces.NegComplexPlug plug_n(final m=m)
          "Negative complex plug"
          annotation (Placement(transformation(extent={{-50,90},{-30,110}},
                rotation=0)));
        annotation (Documentation(info="<HTML>
<p>
This partial model is an extension of the model of a generalized electric machine
<tt>PartialBasicMachine</tt>.
Hence, it consists of the same mechanical subsystem.
The model defines a three-phase machine (if the default value of the
'number of phases'-parameter <tt>m</tt> is used).
The electrical subsystem contains two electrical plugs of type
ComplexPlug (meaning six electrical pins of type ComplexPin).<br>
The rms values of the branch voltages and branch currents are calculated from the
corresponding phasors.
The model does include the current phasor balance.
Therefore, models being extended from <tt>PartialBasicElectricMachine3phPwr_wBalance</tt>
must not contain any internal electrical components.
The behaviour of such models has to be defined by equations.
Three values of active and reactive power (for each branch)
are computed and made available via three output signals.<br><br>
<b>Remark:</b><br>
This partial model is suitable for modeling multi-phase machines in
general.
It is not restricted to the well-known three-phase machines.
In order to model a system with different number of phases, the
'number of phases'-parameter <tt>m</tt> has to be changed in all
appearing multi-phase components and connectors.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>"),  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}),
                    graphics),
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                  {100,100}}), graphics={Line(points={{-50,100},{-20,100},{-20,
                    70}}, color={0,0,255}), Line(points={{50,100},{20,100},{20,
                    70}}, color={0,0,255})}));
      equation
        vRe = plug_p.complexPin.vRe - plug_n.complexPin.vRe;
        vIm = plug_p.complexPin.vIm - plug_n.complexPin.vIm;
        iRe = plug_p.complexPin.iRe;
        iIm = plug_p.complexPin.iIm;
        zeros(m) = plug_p.complexPin.iRe + plug_n.complexPin.iRe;
        zeros(m) = plug_p.complexPin.iIm + plug_n.complexPin.iIm;
        for j in 1:m loop
          v[j] = sqrt((vRe[j])^2 + (vIm[j])^2);
          i[j] = sqrt((iRe[j])^2 + (iIm[j])^2);
          phi_v[j] = ComplexLib.Math.atan2(vIm[j], vRe[j]);
          phi_i[j] = ComplexLib.Math.atan2(iIm[j], iRe[j]);
          activePwr[j] = v[j]*i[j]*cos(phi[j]);
          idlePwr[j] = v[j]*i[j]*sin(phi[j]);
        end for;
        phi = phi_v - phi_i;
        complexPwr.real = activePwr;
        complexPwr.im = idlePwr;
      end PartialBasicElectricMachine3phPwr_wBalance;
    end Interfaces;

  end Machines;

  package Interfaces
    "Package for additional definitions for phasor domain descriptions"
    connector ComplexSignal = ComplexLib.Math.ComplexNumber
      "Definition of a complex signal"
      annotation (Documentation(
          info="<html>
<p>
ComplexSignal consists of a complex number <tt>Re + jIm</tt>.
</p>
</html>"));
    connector ComplexInput = input ComplexLib.Interfaces.ComplexSignal
      "Connector for complex input signals"
      annotation (defaultComponentName="y",
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,255,255},
            fillColor={0,255,255},
            fillPattern=FillPattern.Solid)}),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,50},{0,0},{-100,-50},{-100,50}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid), Text(
            extent={{-100,120},{140,60}},
            lineColor={0,0,127},
            textString="%name")}),
      Documentation(info="<html>
<p>
ComplexInput is an input with a complex number <tt>Re + jIm</tt>.
</p>
</html>"));
    connector ComplexOutput = output ComplexLib.Interfaces.ComplexSignal
      "Connector for complex output signals"
      annotation (
        defaultComponentName =                                                                          "y",
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,100},{100,0},{-100,-100},{-100,100}},
            lineColor={0,255,255},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid)}),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Polygon(
            points={{-100,50},{0,0},{-100,-50},{-100,50}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid), Text(
            extent={{-100,120},{140,60}},
            lineColor={0,0,127},
            textString="%name")}),
      Documentation(info="<html>
<p>
ComplexOutput is an output with a complex number <tt>Re + jIm</tt>.
</p>
</html>"));
    annotation (Documentation(info="<html>
<P>
The package contains interfaces for complex numbers:
<ul>
<li>ComplexSignal</li>
<li>ComplexInput</li>
<li>ComplexOutput</li>
</ul>
</P>
<p>
  <dt><b>Main Authors:</b></dt>
<br>
  <dd>Matthias Vetter, Simon Schwunk<br>
  Fraunhofer ISE, Freiburg<br>
  email: <a href=\"mailto:matthias.vetter@ise.fraunhofer.de\">matthias.vetter@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</html>"));
  end Interfaces;

  package SIunits "Package for definitions of additional SIunits"
      annotation (
        Documentation(info="<HTML>
<P>
The package contains an additional unit definition.
</P>
</HTML>
"));
    type Conductance = Real (
      final quantity="Conductance",
      final unit="S");
  end SIunits;

  package Math "Package of mathematical additions"
      annotation (
        Documentation(info="<HTML>
<P>
The package contains some mathematical additions: the definition of a complex number and
an improved implementation of calling the C-function <tt>atan2</tt> from Modelica.
This way, the return of NANs can be avoided.
</P>
</HTML>
"));
    record ComplexNumber "Definition of a complex number"
        annotation (
          Documentation(info="<HTML>
<P>
A complex number consists of a real part and an imaginary part.
</P>
</HTML>
"));
      Real real "Real part of complex number";
      Real im "Imaginary part of complex number";
    end ComplexNumber;

    function atan2 "Four quadrant inverse tangent (avoiding NAN)"
      extends Modelica.Math.baseIcon2;
      input Real u1=1 "Value of first axis";
      input Real u2=1 "Value of second axis";
      output Modelica.SIunits.Angle y;
      annotation (
        Window(
          x=0.36,
          y=0.07,
          width=0.6,
          height=0.6),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-90,0},{68,0}}, color={192,192,192}),
            Polygon(
              points={{90,0},{68,8},{68,-8},{90,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{8.93,-67.2},{17.1,-59.3},{27.3,-53.6},{42.1,-49.4},
                  {69.9,-45.8},{80,-45.1}}, color={0,0,0}),
            Line(points={{-80,-34.9},{-46.1,-31.4},{-29.4,-27.1},{-18.3,-21.5},
                  {-10.3,-14.5},{-2.03,-3.17},{7.97,11.6},{15.5,19.4},{24.3,25},
                  {39,30},{62.1,33.5},{80,34.9}}, color={0,0,0}),
            Line(points={{-80,45.1},{-45.9,48.7},{-29.1,52.9},{-18.1,58.6},{-10.2,
                  65.8},{-1.82,77.2},{0,80}}, color={0,0,0}),
            Text(
              extent={{-90,-46},{-18,-94}},
              lineColor={192,192,192},
              textString="atan2")}),
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-100,0},{84,0}}, color={192,192,192}),
            Polygon(
              points={{100,0},{84,6},{84,-6},{100,0}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
            Line(points={{0,-80},{8.93,-67.2},{17.1,-59.3},{27.3,-53.6},{42.1,-49.4},
                  {69.9,-45.8},{80,-45.1}}, color={0,0,0}),
            Line(points={{-80,-34.9},{-46.1,-31.4},{-29.4,-27.1},{-18.3,-21.5},
                  {-10.3,-14.5},{-2.03,-3.17},{7.97,11.6},{15.5,19.4},{24.3,25},
                  {39,30},{62.1,33.5},{80,34.9}}, color={0,0,0}),
            Line(points={{-80,45.1},{-45.9,48.7},{-29.1,52.9},{-18.1,58.6},{-10.2,
                  65.8},{-1.82,77.2},{0,80}}, color={0,0,0}),
            Text(extent={{-30,89},{-10,70}}, textString="pi"),
            Text(extent={{-30,-69},{-10,-88}}, textString="-pi"),
            Text(extent={{-30,49},{-10,30}}, textString="pi/2"),
            Line(points={{0,40},{-8,40}}, color={192,192,192}),
            Line(points={{0,-40},{-8,-40}}, color={192,192,192}),
            Text(extent={{-30,-31},{-10,-50}}, textString="-pi/2"),
            Text(
              extent={{70,-2},{100,-22}},
              lineColor={160,160,164},
              textString="u1,u2")}),
        Documentation(info="<HTML>
<p>
The equation <tt>y = atan2(u1,u2)</tt> computes <tt>y</tt> such that <tt>tan(y) = u1/u2</tt> and
<tt>y</tt> is in the range <tt>-&pi; &lt; y &le; &pi;</tt>. Usually <tt>u1</tt>, <tt>u2</tt> is provided in such a
form that <tt>u1 = sin(y)</tt> and <tt>u2 = cos(y)</tt>.
If one of the two input values (either <tt>u1</tt> or <tt>u2</tt>) is zero then the
call of atan2 is still possible.<br>
However, if both input values are zero then <tt>atan2</tt> returns an error.
The present implementation yields <tt>y = 0</tt> if both input values are below
<tt>Modelica.Constants.eps</tt>.
Hence, the problem with the Modelica Standard Library <tt>atan2</tt>-call can be avoided.
</p>
<p>
  <dt><b>Main Author:</b></dt>
  <dd>Olaf Enge-Rosenblatt<br>
  Fraunhofer IIS/EAS, Dresden<br>
  email: <a href=\"mailto:olaf.enge@eas.iis.fraunhofer.de\">olaf.enge@eas.iis.fraunhofer.de</a>
  </dd>
</p>
</HTML>
"));
    algorithm
      if abs(u1)<Modelica.Constants.eps and abs(u2)<Modelica.Constants.eps then
        y := 0;
      else
        y := Modelica.Math.atan2(u1,u2);
      end if;
    end atan2;
  end Math;
end ComplexLib;

