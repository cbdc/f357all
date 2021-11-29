<resource schema="f357all">
  <meta name="title">Radio Counterpart Candidates to 4FGL-DR2 Unassociated Sources</meta>
  <meta name="creationDate">2021-04-13T17:05:03</meta>
  <meta name="description">
  The 4FGL-F357 catalog.
  </meta>
  <meta name="creator.name">Bruzewski et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">gamma-ray sources</meta>
  <meta name="subject">radio sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Gamma-ray</meta>
    <meta name="waveband">radio</meta>
   </meta>

   <meta name="source">
      Bruzewski et al., 2021, arXiv:2102.07397
   </meta>

   <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="Name">
    <index columns="RAJ2000,DEJ2000"/>

    <column name="Name" type="text"
      ucd="meta.id;meta.main"
      tablehead="Name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="RAJ2000" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="R.A." verbLevel="1"
      description="Right Ascension"
      required="True"/>

    <column name="DEJ2000" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec." verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="Num_VLASS" type="integer"
      ucd="meta.id.assoc"
      tablehead="VLASS_counterpart" verbLevel="1"
      description="Counterpart in VLASS"
      required="True"/>

    <column name="Num_D5GHZ" type="integer"
      ucd="meta.id.assoc"
      tablehead="D5GHz_counterpart" verbLevel="1"
      description="Counterpart in D5GHz"
      required="True"/>
    
    <column name="Num_D7GHZ" type="integer"
      ucd="meta.id.assoc"
      tablehead="D7GHz_counterpart" verbLevel="1"
      description="Counterpart in D7GHz"
      required="True"/>

  </table>

  <data id="import">
    <sources>f357all.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">4FGL-F357 catalog</meta>
    <meta name="shortName">4FGL-F357 cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="local"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
