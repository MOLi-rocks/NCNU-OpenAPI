/* �հȨt�θ�ƺ��n�]�w�{��
   �@�̡G�\���@Shiu-Sheng Yu
   2004/02/26, �[�J�֭㾨��l�����������4�����
   2004/05/10, �s�Wcommonrank���
   2004/05/19, opened�[�Jlimitdeptid
   2005/01/20, publication�W�[primary key ���, place�אּnot null
   2005/02/19, staff.phone2�W����varchar(24)
   2005/09/16, opened�[�Jplimit�U�t���פH�ƥ\��
   2005/11/07, student�[�Jdeptrank, �W�[restcode(��ǭ�]�N�X)
   2005/11/09, �s�Wgroupcourse(����ҵ{��)
   2005/11/17, studentfee �R�� remit(��K),reimburse(�h�O);�[�Jpaid(�wú�O)
   2005/11/29, student �[�Jjobstatus. �s�Wjobstatuscode
   2005/12/28, student�[�Jlessoraddress,lessor,lessorphone���,�R��dormnum���
   2005/12/29, applydorm�[�Jdormnum���, exempt�[�Jinternalcid(����Ҹ�)
   2006/01/02, �[�Jdormmate(�Ǥͪ�), �[�Japplyexemptcode(�ӽЩ�K�N�X)
   2006/01/04, �[�Jroomtype(��Ǥ�����)
   2006/01/18, �[�Jhealthexam, posnegcode,abnormalcode
   2006/02/17, student.entrydiploma(�J�ǾǾ�)���קאּ90,�t�Ҥ���²�٪��קאּ12
   2006/05/03, �[�Jta��ƪ�
   2006/06/13, �[�Jdailyusage�έp��
   2006/10/26, �[�Jtutor�ɮv, �����advisor�אּ���ɱб�
   2006/12/07, printtypecode,printlog�[�Jprinter���, �Ϥ��P���i�H�L�줣�P�L���
   2006/12/09, ����table schoolcode, �����]�w����driver.DB.txt
   2006/12/10, �s�Wqualifycode, qualifycourse, qualifyrule, qualify���
   2007/03/20, department�[�J�����O
   2007/04/26, outcredit �[�Jdivision
   2007/12/20, course�[�J�ҵ{²��, �t�d�t��
   2007/12/21, student�[�Jpoorhonest
   2008/07/07, student�[�Jlastdegree,yearincome
   2008/07/16, ��opened.place����==>20
   2009/02/20, ��opened.place����==>32
   2009/03/05, unit�[�J�~���v��, A��B��C�`
   2009/03/09, �s�W���teamcode,teammember
   2009/06/25, �s�Wopened.inenglish
   2009/09/10, �s�Wopened.tafee
   2009/09/15, �s�Wtequestion.coursetype(���νҵ{),opened.evaltype
   2009/10/27, �N�Ҧ���text�אּntext
   2009/12/02, �s�Wtequestion.needcount(�C�J�`���p��),selected.tereject
   2010/02/01, �s�Wwhoudouble and whoassist�����t�W���
   2010/03/06, �s�Wcourseopinion
   2010/04/14, �s�Wassistancerequest
   2010/04/18, �s�Wabilityitem, careergroup
   2010/06/10, course.ability�W����20
   2010/06/17, healthexam �[�J systolicpressure, diastolicpressure, pulse, bloodsugar
   2010/08/12, student.autobiography
   2010/08/16, lessonguidance, concernedstudent
   2011/01/18, abilityitem�[�Jclass
   2011/02/10, opened.limitdeptid�W����30
   2011/06/03, osshow�[�J�լd�ﶵ�]�w
   2012/03/18, �N�U��year�אּint���A, �H�K���T�Ƨ�
   2012/05/29, �[�Japplyaddcourse���
   2012/08/31, �[�Jopened.limitgrade
*/
use ncnu
go
dump transaction ncnu with no_log
go
drop procedure usp_query_attendliteracy
go
drop procedure usp_insert_attendliteracy
go
drop procedure usp_update_attendliteracy
go
drop procedure usp_update2_attendliteracy
go
drop procedure staff_email_list
go
drop procedure staff_login
go
drop procedure std_login
go
drop procedure staff_qvote
go
drop procedure std_qvote
go
drop procedure unit_email_list
go
drop table applyaddcourse
drop table lessonguidance
drop table concernedstudent
drop table abilityitem
drop table careergroup
drop table assistancerequest
drop table assistancemail
drop table courseopinion
drop table restcode
drop table leavecode
drop table leave
drop table applyleave
drop table absence
drop table commonrank
drop table groupcourse
drop table dormmate
drop table yearcourse
drop table posnegcode
drop table dailyusage
go
drop table officetypecode
go
drop table studentdriverlicense
go
drop table printlog
go
drop table driverlicensecode
go
drop table printtypecode
go
drop table trafficrecord
go
drop table trafficcode
go
drop table studentvehicle
go
drop table outsidestudentwork
go
drop table outsidestudentworker
go
drop table studentwork
go
drop table unitencouragestudent
go
drop table unitbudget
go
drop table budgetcode
go
drop table privilege
go
drop table privilegecode
go
drop table advisorcomment
go
drop table talkwith
go
drop table selectlog
go
drop table attendliteracy
go
drop table literacylecture
go
drop table mutualcourse
go
drop table optioncourse
go
drop table QVStaffAnswer
go
drop table QVStafflog
go
drop table QVStudentAnswer
go
drop table QVStudentlog
go
drop table QVquestionitem
go
drop table QVquestion
go
drop table QuestionVote
go
drop table merit
go
drop table highschoolcode
go
drop table recdeptcode
go
drop table uniondeptcode
go
drop table project
go
drop table patent
go
drop table honor
go
drop table teanswer
go
drop table tequestionitem
go
drop table tequestion
go
drop table teachevaluation
go
drop table whodouble
go
drop table whoassist
go
drop table exempt
go
drop table transfer
go
drop table teaching
go
drop table ta
go
drop table selected
go
drop table rest
go
drop table outcredit
go
drop table opened
go
drop table coremin
go
drop table conduct
go
drop table classroom
go
drop table assist
go
drop table schoolrequire
go
drop table require
go
drop table dmajor
go
drop table precourse
go
drop table course
go
drop table school
go
drop table experience
go
drop table publication
go
drop table studentfee
go
drop table studentrefund
go
drop table applydorm
go
drop table dormroom
drop table roomtype
go
drop table student
go
drop table department
go
drop table college
go
drop table position
go
drop table unit
go
drop table staff
go
drop table exemptcode
go
drop table applyexemptcode
go
drop table staffcode
go
drop table workcode
go
drop table edulevelcode
go
drop table schoolingcode
go
drop table dissertationcode
go
drop table stustatuscode
go
drop table corecode
go
drop table divicode
go
drop table remitcode
go
drop table meritcode
go
drop table jobstatuscode
go
drop table teammember
go
drop table teamcode
go
drop table tetypecode
go
drop table practicetypecode
go
create table practicetypecode /* �D���½ҵ{�N�X�� */
(
    code char(1) not null, /* �N�X */
    description varchar(40), /* �W�� */
    primary key(code)
)
go
create table tetypecode /* �оǷN���լd�ҵ{���O�X */
(
    code char(1) not null, /* �N�X */
    description varchar(10), /* �W�� */
    primary key(code)
)
go
create table teamcode /* �ն��N�X�� */
(
    code varchar(2) not null, /* �N�X */
    description varchar(12) not null, /* ���W */
    time varchar(40) null, /* ���V�ɬq */
    primary key(code)
)
go
create table officetypecode ( /* �M�ݥ�¾�� */
    code char(1), /* 1�M, 2�� */
    description char(4) not null,
    primary key(code)
)
go
create table posnegcode ( /* ���d�ˬd����(0)����(1)�N�X�� */
    code char(1) not null, /* �N�X */
    description varchar(6) not null, /* �y�z */
    primary key(code)
)
go
create table abnormalcode ( /* ���d�ˬd���`(0)���`(1) */
    code char(1) not null, /* �N�X */
    description varchar(6) not null, /* �y�z */
    primary key(code)
)
go
/*
 B: �Ǥh�Z
 G: �Ӥh�Z
 P: �դh�Z
 1: ��i��
 2: �[����
 3: ������
 4: �Щx��
 */
create table roomtype ( /* ��Ǥ����N�X�� */
    code char(1) not null, /* �N�X */
    description varchar(6) not null, /* �y�z */
    primary key(code)
)
go
/*
'A' �Ӥh�Z
'B' �դh�Z
'C' �N�~
'D' �A��
'E' �ݷ~
'F' �h��
*/
create table jobstatuscode ( /* �դͲ{�p�N�X�� */
    code char(1) not null, /* �{�p�N�X */
    description varchar(6), /* �{�p�y�z */
    primary key(code)
)
go
/*
'A','�g�٦]��'
'B','���d�]��'
'C','�Ƿ~�]��'
'D','�u�@�]��'
'E','�a�x�]��'
'F','�ӤH�]��'
'G','�L�Ц]��'
'H','��L�]��'
'I','�h���]��'
'J','���Y�]��'
'K','���|�]��'

*/
create table restcode( /* ��ǭ�]�N�X�� */
  code char(1) not null,
  description varchar(10) not null,
  primary key(code)
)
go
/*
1   ¾�~�p����
2   ¾�~�j�Ȩ�
3   ¾�~�j�f��
4   ¾�~�p����
5   ���q�p����
6   ���q�j�Ȩ�
7   ���q�j�f��
8   ���q�p����
9   ���q��������
A   ���q��������
B   ���q���F�T���f��
C   �x�Τj�Ȩ�
D   �x�θ��Ȩ�
E   �x�Τp����
F   ��ڡ]�~��^�r�p
G   ��L�r�ӡ]�ҡ^
H   �ǲ߾r�p��
*/
create table driverlicensecode ( /* �r�Ӻ����N�X */
    code char(1) not null, /* �r�Ӻ����N�X */
    description varchar(16) not null, /* ����*/
    primary key(code)
)
go
/*
  A:ĵ�i
  B:�ӻ|
  C:�p�L
  D:�j�L
  E:�ż�
  F:�p�\
  G:�j�\
 */
create table meritcode ( /* ���g���O */
  code char(1) not null, /* ���g���O */
  description varchar(8) not null, /* ���g���O���� */
  point decimal(4,1) not null default 0, /* �[�� */
  primary key(code)
)
go
/*
  A: ���ר��߻�ê
  B: ���ר��߻�ê
  C: ���ר��߻�ê
  D: �]������
  E: �]�f����
  F: �������
  G: �C���J��l�k
  H: �����l�k
  I: �{�Эx�H�l�k
  J: 921
  K: �~���J40�U�H�U
  L: �~���J60�U�H�U
  M: �S��ҹJ���k
  N: ���J30�U�H�U
  O: ���J30-40�U
  P: ���J40-50�U
  Q: ���J50-60�U
  R: ���J60-70�U
  S: ���ԧJ
  T: �洫�Υ~��ǥ�
 */
create table remitcode ( /* ��K���O */
  code char(1) not null, /* ��K���O */
  description varchar(14) not null, /* ��K���O���� */
  primary key(code)
)
go
create table divicode ( /* ���O */
  code char(1) not null, /* ���O */
  description varchar(6) not null, /* ���O */
  primary key(code)
)
go
create table exemptcode ( /* ���~��, 0��, 1�~*/
  code char(1) not null, /* ��K���O */
  description varchar(4) not null, /* ��K�W�� */
  primary key(code)
)
go
create table applyexemptcode ( /* ���~��, 0��, 1�~, N���� */
  code char(1) not null, /* ��K���O */
  description varchar(4) not null, /* ��K�W�� */
  primary key(code)
)
go
/*    �֤߽ҵ{���O              */
/*    =================         */
create table corecode ( /* �֤����O */
  code char(1) not null, /* �֤����O�N�X */
  description varchar(20) not null, /* �֤ߦW�� */
  primary key(code)
)
go
/*        �ǥͪ��A�N�X          */
/*    ===================       */
/*     0 -> �b��                */
/*     1 -> ���                */
/*     2 -> �O�d���y            */
/*     3 -> �h��                */
/*     4 -> �v�~                */
/*     5 -> ���~                */
create table stustatuscode ( /* �ǥͪ��A�N�X�� */
  code char(1) not null, /* �ǥͪ��A�N�X */
  description varchar(8) not null, /* �ǥͪ��A */
  primary key(code)
)
go
/*        �פ�����N�X    */
/*    =================== */
/*    A->���Z�פ�         */
/*    B->�|ĳ�פ�         */
/*    C->�ǳN�M��         */
/*    D->�Ǧ�פ�         */
/*    E->�޳N���i         */
/*    F->Ķ�@             */
/*    G->�Ь��           */
/*    H->�@����         */
/*    I->��L             */
create table dissertationcode ( /* �פ�����N�X�� */
  code char(1) not null, /* �פ�����N�X */
  description varchar(8) not null, /* �פ���� */
  primary key(code)
)
go
/*        �׷~���p�N�X          */
/*    ===================       */
/*     0 -> ��L                */
/*     1 -> ���~                */
/*     2 -> ���~                */
/*     3 -> �v�~                */
create table schoolingcode ( /* �׷~���p�N�X�� */
  code char(1) not null, /* �׷~���p�N�X */
  description varchar(6) not null, /* �׷~���p */
  primary key(code)
)
go
/*        �Ш|�{�ץN�X          */
/*    ===================       */
/*     10 -> ��p               */
/*     21 -> �ꤤ               */
/*     22 -> ��¾               */
/*     23 -> ²���v�d           */
/*     31 -> ����               */
/*     32 -> ��¾               */
/*     33 -> �v�d               */
/*     41 -> �G�M               */
/*     42 -> �T�M               */
/*     43 -> ���M               */
/*     44 -> ���~����M         */
/*     50 -> �j��               */
/*     60 -> �Ӥh               */
/*     70 -> �դh               */
/*     71 -> �a�A�դh           */
/*   1X -> ��p                 */
/*   2X -> ��(��)��             */
/*   3X -> ����(¾)             */
/*   4X -> �M��                 */
/*   5X -> �j��                 */
/*   6X -> �Ӥh                 */
/*   7X -> �դh                 */
create table edulevelcode ( /* �Ш|�{�ץN�X�� */
  code            char(2)  not null,    /* �Ш|�{�ץN�X */
  description     varchar(12) not null,    /* �Ш|�{�� */
  primary key (code)
)
go
/*        �b¾���A              */
/*    ===================       */
/*      A -> �b¾               */
/*      B -> �ɽ�               */
/*      C -> �d¾���~           */
/*      D -> �|����             */
/*      E -> �����f��           */
/*      F -> �𰲬�s           */
/*      G -> ��¾               */
/*      H -> �h��               */
/*      I -> ��¾�B���         */
/*      J -> ��¾(�Юv)         */
/*      K -> �����¾(�Юv)     */
/*                              */
/*   A-F -> �b¾                */
/*   G-I -> �h��¾              */
/*   J -> ��¾(�Юv)            */
/*   K -> �����¾(�Юv)        */
create table workcode ( /* �H���b¾���A�N�X�� */
  code            char(1)  not null,    /* �H���b¾���A�N�X */
  description     varchar(20) not null, /* �H���b¾���A */
  primary key (code)
)
go
/*        �H���Ϥ�            */
/*    ===================     */
/*      A -> �Юv             */
/*      B -> ��s�H��         */
/*      C -> ¾��             */
/*      D -> �U��             */
/*      E -> �}�֩ʬ�ޤH��   */
/*      F -> �Щx             */
/*      G -> �n��ĵ           */
/*      H -> �ޤu             */
/*      I -> �u��             */
/*      J -> ���u�Юv         */
/*      K -> �����H��         */
/*      L -> �{�ɤH��         */
/*      M -> �p�e�U�z         */
/*      N -> �uŪ��           */
/*      O -> ¾�ȥN�z�H       */
/*      P -> �ݥ��Юv         */
/*      Q -> �M�׭p�e�U�z     */
/*      R -> ���~�p�ۧU�z     */
/*      S -> �պ޲z�O�i�ΤH�� */

/*  A-E �������s���¾��      */
/*  G-I �������s��ޤu�B�u��  */
create table staffcode ( /* �H���Ϥ��N�X�� */
  code            char(1)  not null,    /* �H���Ϥ��N�X */
  description     varchar(20) not null, /* �H���Ϥ� */
  primary key (code)
)
go
create table dailyusage /* �C��ϥβέp��� */
(
    logday char(10) not null, /* ��� */
    usage decimal(7,0) not null, /* �ϥζq */
    primary key(logday)
)
go
create table college /* �ǰ|��� */
(
  colid char(1) not null, /* �ǰ|�N�X */
  name varchar(10) not null, /* �ǰ|�W�� */
  ename varchar(40) null, /* �ǰ|�^��W�� */
  edu_colid char(4) null, /* �Ш|���ǰ|�N�X */
  primary key(colid)
)
go
create table department /* �t�Ҹ�� */
(
  deptid varchar(3) not null, /* �t�ҥN�X */
  colid char(1) not null, /* ���ݾǰ|�N�X */
  degree varchar(30) not null, /* �Ǥh�Ǧ�W�� */
  gdegree varchar(30) not null, /* �Ӥh�Ǧ�W�� */
  cname varchar(50) not null, /* �t�Ҥ���W */
  ename varchar(90) not null, /* �t�ҭ^��W */
  sname varchar(20) not null, /* ����²�� */
  mincredit numeric(3,0) not null, /* �j�ǳ��̧C���~�Ǥ� */
  gmincredit numeric(2,0) not null, /* ��s�ҳ̧C���~�Ǥ� */
  pmincredit numeric(2,0) not null, /* �դh�Z�̧C���~�Ǥ� */
  dmincredit numeric(2,0) not null, /* ����ͳ̧C���~�Ǥ� */
  note ntext not null, /* ��Ҫ`�N�ƶ� */
  uid char(4) null,     /* �������N�X */
  edegree varchar(50) null,  /* �Ǥh�Ǧ�^��W�� */
  egdegree varchar(50) null, /* �Ӥh�Ǧ�^��W�� */
  abbredegree varchar(8) null,  /* �Ǥh�Ǧ�^���Y�g�W�� */
  abbregdegree varchar(8) null, /* �պӤh�Ǧ�^���Y�g�W�� */
  pdegree varchar(30) null, /* �դh�Ǧ�W�� */
  epdegree varchar(60) null, /* �դh�Ǧ�^��W�� */
  abbrepdegree varchar(8) null, /* �դh�Ǧ�^���Y�g�W�� */
  tuition numeric(6,0) not null default 0, /* �ǶO */
  incidental numeric(6,0) not null default 0, /* ���O */
  basic numeric(6,0) not null default 0, /* �����O��� */
  bcreditfee numeric(6,0) not null default 0, /* �Ǥh�Ǥ��O */
  gcreditfee numeric(6,0) not null default 0, /* �ӳդh�Ǥ��O */
  fortuition numeric(6,0) not null default 0, /* �~��ǥ;Ǥh�ǶO */
  forincidental numeric(6,0) not null default 0, /* �~��ǥ;Ǥh���O */
  forcreditfee numeric(6,0) not null default 0, /* �~��ǥ;Ǥh�Ǥ��O */
  forgbasic numeric(6,0) not null default 0, /* �~��ǥͺӤh�����O��� */
  forgcreditfee numeric(6,0) not null defulat 0, /*�~��ǥͺӤh�Ǥ��O */
  forpbasic numeric(6,0) not null default 0, /* �~��ǥͳդh�����O��� */
  forpcreditfee numeric(6,0) not null defulat 0, /*�~��ǥͳդh�Ǥ��O */
  fwave1 numeric(6,0) not null default 0, /* ����������K�ǶO */
  fwave2 numeric(6,0) not null default 0, /* ����������K���O */
  hwave1 numeric(6,0) not null default 0, /* ������K�ǶO */
  hwave2 numeric(6,0) not null default 0, /* ������K���O */
  edu_deptid char(6)  null,               /* �Ш|���t�ҥN�X */
  sort_order int null,
  edutarget ntext null, /* �Ǥh�Z�Ш|�ؼ� */
  coursemap image null, /* �Ǥh�Z�ҵ{�a�� */
  careermap image null, /* �Ǥh�Z¾�P�i���� */
  gedutarget ntext null, /* �Ӥh�Z�Ш|�ؼ� */
  gcoursemap image null, /* �Ӥh�Z�ҵ{�a�� */
  gcareermap image null, /* �Ӥh�Z¾�P�i���� */
  pedutarget ntext null, /* �դh�Z�Ш|�ؼ� */
  pcoursemap image null, /* �դh�Z�ҵ{�a�� */
  pcareermap image null, /* �դh�Z¾�P�i���� */
  primary key (deptid),
  foreign key(colid) references college,
)
go
create index department_colid on department(colid,deptid)
go
create table staff /* ���u�򥻸�� */
(
  id               varchar(10) not null,       /* �����Ҧr�����@�Ӹ��X */
  name             nvarchar(12) not null,      /* �m�W */
  ename            varchar(30) null,           /* �^��m�W */
  sex              char(1) not null,           /* �ʧO:  M: �k F: �k */
  birthday         varchar(7) null,            /* �ͤ� */
  education        char(2) null,               /* �̰��Ǿ��Ш|�{�ץN�X (�Τ��ȤH���N�X) */
  educationstatus  char(1) null,               /* �̰��Ǿ��׷~���p�N�X (�׷~���p: 1:���~ 2:���~ 3:�w�~ 0:��L) */
  account          char(14) null,              /* �l���b�� */
  addr1            varchar(80) null,           /* ���y�a�} */
  addr2            varchar(80) null,           /* �q�T�a�} */
  phone1           varchar(24) null,           /* (��)�q�� */
  phone2           varchar(24) null,           /* (�v)�q�� */
  mphone           varchar(12) null,           /* ��ʹq�� */
  email            varchar(40) null,           /* email */
  homePage         varchar(60) null,           /* www HomePage */
  workstatus       char(1) not null default 'A', /* �b¾���A */
  stafftype        char(1) not null default 'A', /* �H���Ϥ��N�X */
  title            varchar(12) not null,       /* ¾�� */
  etitle           varchar(50) not null,       /* �^��¾�� */
  parttitle        varchar(26) null,           /* �D�n��¾¾�� */
  hiredate         varchar(7) not null,        /* ���{¾��¾��� */
  salaryrank       char(3) null,               /* �{¾���~�x¾�� (�Τ��ȤH���N�X) */
  salaryclass      char(3) null,               /* �{¾���~�į�(��) (�Τ��ȤH���N�X) */
  salarypoint      numeric(4,0) null,          /* ���~���I */
  leavedate        varchar(7)  null,           /* �h��¾��� */
  password         varchar(20) null,           /* �K�X */
  lastupdatedate   char(7) null,                /* ��Ƴ̫Ყ�ʤ�� */
  photo            image null, /* �Ӥ� */
  staffid          int null, /* ���u�s�� */
  ecard_uid char(10) null, /* -- �y�C�d�����d�� */
  ecard_no char(10) null, /* -- �y�C�d�~���d�� */
  encpass          char(128) null, /* sha512 */
  staffid2   char(5) null, /* ���u�s��:�r�� */
  primary key (id)
)
create index staff_name on staff(name)
create unique index staff_staffid2 on staff(staffid2)
go
create table student /* �ǥ;��y��� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  deptid varchar(3) not null, /* ���ݨt�ҥN�X */
  name nvarchar(20) not null, /* �m�W */
  birthday varchar(7) null, /* �ͤ� */
  sex char(1) not null, /* �ʧO */
  grade char(1) not null default '1', /* �~�� */
  type varchar(30) not null default '�@���', /* �����O */
  status char(1) not null default '0', /* �ǥͪ��A,0�b��,1���,2����դh,3�h��,4�w�~,5���~,6�洫�ǥ�,7�w���ե洫�� */
  leavedate int null, /* ���դ�� */
  email varchar(40) null, /* �q�l�l��H�c */
  id varchar(10) null, /* �����Ҧr�� */
  phone1 varchar(24) null, /* ���y�a�p���q�� */
  citizen varchar(12) null default 'ROC', /* ���y */
  addr1 varchar(100) null, /* ���y�a�} */
  addr2 varchar(100) null, /* �q�T�a�} */
  thesis varchar(255) null, /* �פ��D�� */
  tscore numeric(5,2) null default -1, /* �Ǧ�Ҹզ��Z */
  diplomaid char(24) null, /* �����ҮѸ��X */
  ediplomaid char(10) null, /* �^��Ǧ��ҮѧǸ� */
  entrydoc varchar(40) null, /* �J�Ǥ帹 */
  entrydiploma varchar(90) null, /* �J�ǾǾ� */
  password varchar(20) null, /* �K�X */
  entrydate int null, /* �J�Ǧ~�� */
  ograduate char(1) not null default '1', /* ��Ǯղ��w�~,1��,2�v */
  oentrydoc varchar(40) null, /* ��ǮդJ�Ǹ��֭�~��帹 */
  ograde char(1) null, /* ��Ǯոw�~�~�� */
  ograduatedoc varchar(40) null, /* ��Ǯղ��~�ҮѸ��X */
  equaldoc varchar(40) null, /* ��Ԥj�M�P���ǤO�~��帹 */
  pracscore numeric(5,1) null default -1, /* ��ߦ��Z */
  leavereason varchar(30) null, /* ���խ�] */
  deptgroup varchar(20) null, /* �t�ҲէO */
  zipcode1 varchar(5) null, /* ���y�a�l���ϸ� */
  pname nvarchar(20) null, /* ���@�H�m�W */
  account char(14) null, /* �l���b�� */
  age numeric(3,0) null, /* �~�� */
  alive char(1) null default 'Y', /* �s�\ */
  average numeric(5,2) null default 0, /* �Ƿ~�������Z */
  military varchar(6) null default 'N', /* �L�ЧO */
  cardserial numeric(1,0) null default 0, /* �ǥ��ҿ򥢧Ǹ� */
  phone2 varchar(24) null, /* �q�T�a�}�p���q�� */
  zipcode2 varchar(5) null, /* �q�T�a�l���ϸ� */
  class char(1) not null default 'B', /* ���O, B�Ǥh�Z,G�Ӥh�Z,P�դh�Z */
  ename varchar(40) null, /* �^��W */
  ethesis varchar(255) null, /* �^��פ��D�� */
  class_no varchar(2) null default 0, /* �Z�O */
  career varchar(255) null default '�D¾��:', /* ���q(�Ǯ�)��¾�� */
  note varchar(255) null, /* �Ƶ� */
  remittype char(1) null, /* ��K���O */
  conscriptdate varchar(7) not null default '', /* �֭㾨��l����� */
  conscriptnum varchar(30) not null default '', /* �֭㾨��l���r�� */
  cconsdate varchar(7) not null default '', /* ��������l����� */
  cconscript varchar(30) not null default '', /* ��������l���r�� */
  postponedate varchar(7) not null default '', /* �֭�w�x��� */
  postponenum varchar(30) not null default '', /* �֭�w�x�r�� */
  cpostdate varchar(7) not null default '', /* �����w�x��� */
  cpostpone varchar(30) not null default '', /* �����w�x�r�� */
  studentfrom varchar(20) not null default '', /* �ǥ��y�e(�X�ͦa) */
  militaryrank varchar(10) not null default '', /* �x�ض��� */
  delayreason varchar(20) not null default '', /* ������] */
  phone3 varchar(24) not null default '', /* ��ʹq�ܸ��X */
  upboundary decimal(3,0) not null default 40, /* �uŪ�ɼƤW�� */
  advisor varchar(10) null, /* ���ɱб� */
  militarydept varchar(10) not null default '', /* �κ޳� */
  internaltype varchar(10) not null default '', /* �դ������O */
  accountid varchar(10) null, /* �l����W */
  reconscriptdate varchar(7) not null default '', /* �֭㾨��l��������� */
  reconscriptnum varchar(30) not null default '', /* �֭㾨��l�������r�� */
  repostponedate varchar(7) not null default '', /* �֭�w�x������� */
  repostponenum varchar(30) not null default '', /* �֭�w�x�����r�� */
  applyleavedate char(7) not null default '', /* ��z���դ�� */
  picture image null, /* �J�ǷӤ� */
  rank varchar(7) null, /* ���Z�ƦW */
  deptrank varchar(7) null, /* ���t�ƦW */
  jobstatus char(1) null default 'E', /* �{�p, A�Ӥh�Z,B�դh�Z,C�N�~,D�A��,E�ݷ~,F�h�� */
  lessoraddress varchar(100) null, /* ���Φa�} */
  lessor nvarchar(10) null, /* �ЪF�m�W */
  lessorphone varchar(24) null, /* �ЪF�q�� */
  lessorhome varchar(100) null, /* �ЪF�a�} */
  contact nvarchar(30) null, /* ����p���H�ιq�� */
  tutor varchar(10) null, /* �ɮvid */
  modifydate varchar(8) null, /* �p����T�ק��� */
  poorhonest char(1) not null default 'N', /* �M�H�ǥ� */
  lastdegree varchar(36) null, /* �̰��Ǿ� */
  yearincome decimal(4) not null default 0, /* �~���J */
  deptcname varchar(50) null, /* �t����W */
  deptename varchar(70) null, /* �t�^��W */
  colcname varchar(10) null, /* �|����W */
  colename varchar(40) null, /* �|�^��W */
  taappsem varchar(4) null, /* �q�LTA�{�ҾǴ� */
  ecard_uid char(10) null, /* -- �y�C�d�����d�� */
  ecard_no char(10) null, /* -- �y�C�d�~���d�� */
  autobiography ntext null, /* �۶� */
  encpass  char(128) null, /* sha512 */
  primary key (studentid),
  foreign key(deptid) references department,
  foreign key(advisor) references staff,
  foreign key(tutor) references staff
)
create index student_name on student(name)
create index student_division on student(studentid,class)
go
create table unit ( /* ����� */
  layer            char(1) not null,     /* �h�� */
  uid              char(4) not null,     /* �������N�X */
  belong           char(4) null,         /* ���ݳ�� */
  attrib           char(1) null,         /* ����ݩ� */
  sort_order       int null, /* �Ƨ� */
  ufullname        varchar(80) not null, /* �����W */
  ufullname2        varchar(80) not null, /* �����W2 */
  uabbrname        varchar(40) not null, /* ���²�� */
  efullname        varchar(100) not null, /* �^������W */
  eabbrname        varchar(100) not null, /* �^����²�� */
  extphone         varchar(12) null,     /* �M�u�q�ܸ��X */
  intphone         varchar(6) null,      /* ���u�q�ܸ��X(����) */
  fax              varchar(12) null,     /* �ǯu���X */
  email            varchar(30) null,     /* �q�l�l�� */
  manager          char(7) null,         /* �D��¾��N�X */
  lastupdatedate   char(7) null,         /* ��Ƴ̫Ყ�ʤ�� */
  active           char(1) not null default 'Y', /* �{����� */
  www              varchar(100) null, /* �����} */
  edu_deptid       char(6) null, /* �Ш|���N�X */
  prirequire       varchar(5) null,      /* �~���v�� */
  joomla_url       varchar(200) null,
  sort_order        int null, /* �Ƨ� */
  primary key (uid),
  foreign key(belong) references unit,
)
go
create table position ( /* ¾���� */
  pid              char(7) not null,      /* ¾�ʥN�� */
  officetype       char(1) not null default '1',  /* �M�B�ݥ�: 1:�M��, 2:�ݥ� */
  uid              char(4) not null,      /* ���ݳ����N�X */
  sort_order       int null, /* �Ƨ� */
  stafftype        char(1) not null,      /* �H���Ϥ��N�X */
  title            varchar(20) not null,  /* ¾�� */
  etitle           varchar(50) not null,  /* �^��¾�� */
  id               varchar(10) null,      /* �{¾�H�������Ҧr�� */
  hiredate         varchar(7) null,       /* �{¾�H����¾��� */
  phone            varchar(19) null,      /* (��)�q�ܸ��X */
  actstatus char(1) not null default '0', /* �N�z���A,0����,1�L�� */
  lastupdatedate   char(7) null,                /* ��Ƴ̫Ყ�ʤ�� */
  deduct           decimal(1,0) not null default 0, /* �������I�� */
  jobs             varchar(1000) null, /* �~�Ȱ��x */
  primary key(pid),
  foreign key(uid) references unit,
  foreign key(id) references staff
)
create index position_id on position(id)
go
create table course /* �ҵ{�򥻸�� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  cname varchar(50) not null, /* ����W�� */
  ename varchar(100) null, /* �^��W�� */
  grade varchar(4) not null, /* �ײߦ~�� */
  credit numeric(3,1) not null default 0, /* �Ǥ��� */
  practice char(1) not null default '0', /* �D���½ҵ{ */
  division char(1) not null default 'B', /* �̰��ӻ{���O */
  hours numeric(3,1) not null default 0, /* ���I�� */
  repeat char(1) not null default 'N', /* �i�_���Э� */
  sname varchar(20) null, /* �ҵ{²�� */
  chargedept varchar(3) null, /* �t�d�t�� */
  coursesyllabus ntext null, /* �ҵ{�W�d */
  ability varchar(30) null, /* �֤߯�O */
  career varchar(30) null, /* ¾�P���O */
  primary key (courseid),
  foreign key(chargedept) references department
)
create index course_grade on course(courseid,grade)
go
create table precourse /* ���׾Ǥ��n�D */
(
  courseid varchar(8) not null, /* �Ҹ� */
  precourseid varchar(8) not null, /* ���׽Ҹ� */
  start numeric(3,0) not null, /* �ҥΦ~�� */
  stop numeric(3,0) not null default 999, /* ���Ħ~�� */
  primary key (courseid,precourseid),
  foreign key (courseid) references course,
  foreign key (precourseid) references course
)
create index precourse_pre on precourse(precourseid)
go
create table schoolrequire /* �թw���פή֤߽ҵ{ */
(
  courseid varchar(8) not null, /* �Ҹ� */
  start numeric(3,0) not null, /* �ҥΦ~�� */
  stop numeric(3,0) not null default 999, /* ���Ħ~�� */
  coretype char(1) not null default '1', /* �֤����O */
  primary key (courseid,start,stop),
  foreign key (courseid) references course
)
go
create table require /* ���׾Ǥ� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  deptid varchar(3) not null, /* �n�D���רt�ҥN�X */
  start numeric(3,0) not null, /* �ҥΦ~�� */
  stop numeric(3,0) not null default 999, /* ���Ħ~�� */
  class char(1) not null default 'B', /* �Ǻӳ� */
  primary key (courseid,deptid,start,stop,class),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index require_id on require(courseid)
create index require_deptid on require(deptid)
go
create table assist /* ���t���׾Ǥ� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  deptid varchar(3) not null, /* ���t�t�ҥN�X */
  start numeric(3,0) not null, /* �ҥΦ~�� */
  stop numeric(3,0) not null default 999, /* ���Ħ~�� */
  primary key (courseid,deptid,start,stop),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index assist_id on assist(courseid)
create index assist_deptid on assist(deptid)
go
create table dmajor /* ���D�ץ��׾Ǥ� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  deptid varchar(3) not null, /* ���D�רt�ҥN�X */
  start numeric(3,0) not null, /* �ҥΦ~�� */
  stop numeric(3,0) not null default 999, /* ���Ħ~�� */
  primary key (courseid,deptid,start,stop),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index dmajor_id on dmajor(courseid)
create index dmajor_deptid on dmajor(deptid)
go
create table classroom /* �ЫǸ�� */
(
  classroomid varchar(8) not null, /* �ЫǥN�X */
  capacity numeric(3,0) not null, /* �e�q */
  equipment varchar(30) null, /* �]�� */
  deptid varchar(3) null, /* �u�����t�t�� */
  managementunit char(4) null, /* �޲z��� */
  powerconsumption int null default 0, /* �q�O���� */
  fee int null default 0, /* 
  primary key (classroomid),
  foreign key(management) references unit
)
go
create table roomtypecode (
    code char(1) not null,
    description varchar(10) not null,
    primary key(code)
)
go
insert roomtypecode(code,description) values ('A', '�Ы�')
insert roomtypecode(code,description) values ('B', '�|ĳ��')
insert roomtypecode(code,description) values ('C', '��t�U')
insert roomtypecode(code,description) values ('D', '�B�ʳ]�I')
insert roomtypecode(code,description) values ('E', '�ۭ׫�')
insert roomtypecode(code,description) values ('F', '�����')
insert roomtypecode(code,description) values ('G', '�줽��')
insert roomtypecode(code,description) values ('H', '�Юv��s��')
insert roomtypecode(code,description) values ('I', '�ǥͬ�s��')
insert roomtypecode(code,description) values ('J', '�Z��')
insert roomtypecode(code,description) values ('K', '������')
insert roomtypecode(code,description) values ('L', '�x�ë�')
go
create table room /* �Ŷ���� */
(
    roomid varchar(8) not null, /* �Ŷ��N�X */
    roomtype char(1) not null default 'A', /* ���O */
    capacity numeric(3,0) not null, /* �e�ǤH�� */
    equipment varchar(40) null, /* �]�� */
    managementunit char(4) null, /* �޲z��� */
    area float null, /* ���n */
    powerconsumption int null default 0, /* �q�O���� */
    memo nvarchar(40) null, /* ���` */
    fee int null default 0,
    primary key (classroomid),
    foreign key(management) references unit
)
go

create table conduct /* �ަ�P�Ǵ����Z */
(
  studentid varchar(10) not null, /* �Ǹ� */
  year int not null, /* �Ǧ~�� */
  score numeric(4,1) not null default -1, /* �ަ榨�Z */
  average numeric(6,2) null, /* �Ǵ��������Z */
  rank varchar(7) null, /* �Ǵ��ƦW */
  deptid varchar(3) null, /* ��Ǵ����ݨt�� */
  grade char(1) null, /* ��Ǵ����~�� */
  failpass numeric(3,1) null, /* ��Ǵ����L�Ǥ��� */
  credit numeric(3,1) null, /* ��Ǵ��`�Ǥ��� */
  primary key (studentid,year),
  foreign key(studentid) references student,
  foreign key(deptid) references department
)
create index conduct_sid on conduct(studentid)
go
create table coremin /* �֤߽ҵ{�̧C�Ǥ��� */
(
  coretype char(1) not null, /* �֤����O */
  mincredit numeric(2,0) not null, /* �̧C�Ǥ��� */
  start numeric(3,0) not null, /* �ҥΦ~ */
  stop numeric(3,0) not null, /* ���Ħ~ */
  primary key (coretype,start,stop)
)
go
create table opened /* �}�]�ҵ{��� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  year int not null, /* �Ǧ~�� */
  class varchar(6) not null default '0', /* �Z�O,�Y����0,�t�η|�{�����ҵ{����Z�H�W */
  requirement char(1) default '0', /* �]�ƻݨD */
  time varchar(8) null, /* �W�Үɶ� */
  place varchar(32) null, /* �W�Ҧa�I, �P�ɬq�a�I�H+�s�� */
  evaluation char(1) null default '1', /* �O�_��Ų */
  hours numeric(3,1) not null default 0, /* �½Үɼ�,0��ܦP�Ǥ���,�D0�����I�O,��Ǥ��Ƭ�0�ɤ]�|�v�T�Ǥ��O�p�� */
  syllabus ntext null, /* �Ǵ��j�� */
  limit numeric(3,0) not null default 0, /* �H�ƤW��, 0������ */
  note varchar(50) null, /* ���O */
  teachers nvarchar(42) null, /* �½ҦѮv, query cache */
  credit numeric(3,1) not null default -1, /* �Ǥ���,�u����W�h��"���\�P�@���ҦU�Ǵ��i�����P�Ǥ���"�ɤ~�ϥ� */
  floor numeric(2,0) not null default 0, /* �h��H�ƭ���, 0��ܤ����� */
  deptid varchar(3) null, /* �}�ұЮv�t�� */
  senddate varchar(8) null, /* ���Z�P�e��� */
  limitdeptid varchar(30) null, /* �i�רt��,�H','���}�t�ҥN�X,!�}�Y��ܭt����C */
  plimit varchar(20) null, /* �U�t���פH��, deptid(1):limit(1),deptid(2):limit(2),!limit(3), "!" ��ܨ�L�t�� */
  limitgrade varchar(30), /* �U�t���פH��, deptid(1):grade(1),deptid(2):grade(2) */
  sydate varchar(8) null, /* �즸�Һ��P�e�� */
  inenglish char(1) not null default 'N', /* ���^�y�½� */
  tafee int default 0, /* �U���`���~ */,
  evaltype varchar(6) null, /* �A�ε�Ų���O,0�۵���,1�@����,2��|��,3���^�y��,4���q�A����,5�U���� */
  tescore decimal(3,2) null default 0, /* �оǵ�Ų������ */
  tereferenceonly char(1) null default 'N', /* ��Ų�u�ѰѦ� */
  colscore decimal(3,2) null default 0, /* ���|�������� */
  schoolscore decimal(3,2) null default 0, /* ���ե������� */
  primary key (courseid,year,class),
  foreign key(courseid) references course,
  foreign key(deptid) references department
)
create index opened_year on opened(year)
go
create table outcredit /* �ջڿ�Ҹ�� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  credit numeric(4,1) null,     /* �Ǥ��� */
  school varchar(30) not null, /* �ײ߾Ǯ� */
  year int not null, /* �ײ߾Ǧ~�� */
  score numeric(4,1) not null default -1, /* ���Z */
  cname varchar(40) not null,     /* ����ҦW */
  ename varchar(80) null,     /* �^��ҦW */
  division char(1) not null default 'B', /* ���ݳ��O */
  primary key(studentid,year,cname),
  foreign key(studentid) references student
)
create index student_id ON outcredit(studentid)
go
create table rest /* ��Ǹ�� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  year int not null, /* �}�l��ǾǦ~�� */
  period numeric(1,0) not null, /* �׾Ǵ���(�Ǵ�) */
  restdoc varchar(20) null, /* ��Ǥ帹 */
  reason char(1) null, /* ��Ǧ]�� */
  note varchar(30) null, /* �Ƶ� */
  backyear varchar(4) null, /* ���_�ǾǦ~�� */
  primary key (studentid,year),
  foreign key (studentid) references student
)
go
create table selected /* ��Ҹ�� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  year int not null, /* �Ǧ~�� */
  class varchar(6) not null default '0', /* �Z�O */
  studentid varchar(10) not null, /* �Ǹ� */
  score numeric(4,1) not null default -1, /* ���Z,-1���Z����,-2�ӤH���Z����,-3�а�,-4�ʦ�,-5���� */
  mandatory char(1) not null default 'N', /* �O�_���� */
  netscore char(1) not null default 'N', /* �O�_�����e���Z */
  tereject char(1) not null default 'N', /* ���C�J�оǷN�� */
  primary key (studentid,courseid,year),
  foreign key (courseid,year,class) references opened,
  foreign key (studentid) references student
)
create index selected_who on selected(courseid,year,class,studentid,score,tereject)
go
create table teaching /* �½Ҹ�� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  year int not null, /* �Ǧ~�� */
  class varchar(6) not null default '0', /* �Z�O */
  teacherid varchar(10) not null, /* �Юv�����Ҧr�� */
  primary key (teacherid,courseid,year,class),
  foreign key(courseid,year,class) references opened,
  foreign key(teacherid) references staff
)
go
create table ta /* TA��� */
(
  courseid varchar(8) not null, /* �Ҹ� */
  year int not null, /* �Ǧ~�� */
  class varchar(6) not null default '0', /* �Z�O */
  studentid varchar(10) not null, /* TA�Ǹ� */
  salary int default 0, /* ���~ */
  primary key (studentid,courseid,year,class),
  foreign key(courseid,year,class) references opened,
  foreign key(studentid) references student
)
go
create table exempt /* ��K�Ǥ���� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  courseid varchar(8) not null, /* �Ҹ� */
  year int null, /* �ӽоǴ� */
  type char(1) not null default '0', /* ���Υ~��,0��,1�~ */
  internalcid varchar(8) null, /* ����Ҹ�,�Ω�P�O�O�_�����t��ש襻�t���� */
  note varchar(128) null, /* �Ƶ� */
  primary key (studentid,courseid),
  foreign key(studentid) references student,
  foreign key(courseid) references course,
  foreign key(internalcid) references course
)
create index exempt_sid on exempt(studentid)
create index exempt_cid on exempt(courseid)
go
create table transfer /* ��t��� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  year int not null, /* ��t�Ǧ~�� */
  fromdep varchar(3) not null, /* ��t�� */
  todep varchar(3) not null, /* ��ܨt�� */
  beforegrade char(1) not null, /* ��t�e�~�� */
  aftergrade char(1) not null, /* ��t��~�� */
  note varchar(100) null, /* ���� */
  beforeclass varchar(2) not null default '0', /* ��t�e�Z�O */
  primary key (studentid,year),
  foreign key(studentid) references student
)
go
create table whoassist /* ���t�ǥ� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  deptid varchar(3) not null, /* �t�ҥN�X */
  year int null, /* �ӽоǴ� */
  note varchar(100) null, /* ���� */
  deptcname varchar(50) null, /* �t����W */
  deptename varchar(70) null, /* �t�^��W */
  primary key (studentid,deptid),
  foreign key (studentid) references student,
  foreign key (deptid) references department
)
go
create table whodouble /* ���D�׾ǥ� */
(
  studentid varchar(10) not null, /* �Ǹ� */
  deptid varchar(3) not null, /* �t�ҥN�X */
  year int null, /* �ӽоǴ� */
  note varchar(100) null, /* ���� */
  deptcname varchar(50) null, /* �t����W */
  deptename varchar(70) null, /* �t�^��W */
  colcname varchar(10) null, /* �|����W */
  colename varchar(40) null, /* �|�^��W */
  degreecname varchar(30) null, /* �Ǧ줤��W */
  degreeename varchar(50) null, /* �Ǧ�^��W */
  primary key (studentid,deptid),
  foreign key(studentid) references student,
  foreign key(deptid) references department
)
go
create table teachevaluation   /* �оǵ�Ų��� */
(
    teid char(5)            NOT NULL, /* �оǵ�Ų�N�X year(3) + sn(2)  */
    year int         NOT NULL, /* �Ǧ~�� */
    startday varchar(8) null, /* �}�l��� */
    endday varchar(8) null, /* ������� */
    description nTEXT NOT NULL,     /* ��Ų���� */
    comment nTEXT NOT NULL,     /* �Ƶ� */
    questions tinyint not null default 0,     /* �D�� */
    isformal char(1) null default 'Y', /* ������Ų */
    primary key (teid)
)
go

create table tequestion /* �оǵ�Ų�D�ظ�� */
(
  teid               char(5)            NOT NULL, /* �оǵ�Ų�N�X year(3) + sn(2)  */
  qno                tinyint            NOT NULL, /* �D�� */
  question           varchar(255)       NOT NULL, /* �D�� */
  items              tinyint                    , /* �ﵪ�� */
  coursetype         char(1) null, /* ���νҵ{ */
  needcount          char(1) not null default 'Y', /* �C�J�`���p�� */
  bavg decimal(3,2) not null default 0, /* ���դj�ǳ����� */
  gavg decimal(3,2) not null default 0, /* ���լ�s�ҥ��� */
  bstdev float not null default 0, /* ���դj�ǳ��зǮt */
  gstdev float not null default 0, /* ���դj�ǳ��зǮt */
  primary key (teid, qno),
  foreign key(teid) references teachevaluation
)
go

create table tequestionitem /* �оǵ�Ų�D�ؿﵪ��� */
(
  teid               char(5)            NOT NULL, /* �оǵ�Ų�N�X year(3) + sn(2)  */
  qno                tinyint            NOT NULL, /* �D�� */
  itemno             tinyint            NOT NULL, /* �ﵪ�Ǹ� */
  itemdescribe       varchar(255)       null    , /* �ﵪ���� */
  PRIMARY KEY (teid, qno, itemno),
  foreign key(teid,qno) references tequestion
)
go

create table teanswer /* �оǵ�Ų�ǥͧ@����� */
(
  teid               char(5)            NOT NULL,    /* �оǵ�Ų�N�X year(3) + sn(2)  */
  courseid           varchar(8)         NOT NULL,    /* �Ҹ� */
  class              varchar(6)         NOT NULL, /* �Z�O */
  answer             varchar( 50 )      null,    /* ����D���� */
  comment            nvarchar(1200)     null,     /* ��ĳ�D���� */
  id                 int not null identity(1,1),         /* �Ǹ� */
  studentid          varchar(10) null,           /* �Ǹ� */ /*************************************************************************/
  atime              datetime null default getdate(), /* �񵪮ɶ� */
  primary key(id),
  foreign key(courseid) references course,
  foreign key(teid) references teachevaluation,
  foreign key(studentid) references student
)
CREATE INDEX teanswer_all on teanswer(teid,courseid,class,studentid)
CREATE INDEX teanswer_stu on teanswer(studentid,teid,courseid,class)
CREATE INDEX teanswer_teid on teanswer(teid,answer)
go
create table school ( /* �Ǿ���� */
  id               varchar(10) not null,          /* �����Ҧr�� */
  schoolname       varchar(40) not null,          /* �ǮզW�� */
  deptname         varchar(24),                   /* �t�ҦW�� */
  beginDate        varchar(5) not null,           /* �}�l�׷~�~�� */
  endDate          varchar(5) null,               /* �פ�׷~�~�� */
  status           char(1) not null default '1',  /* �׷~���p, 1:���~ 2:���~ 3:�v�~ 0:��L */
  degree           char(2) not null default '50', /* �Ш|�{�� */
  diploma          varchar(36) null,              /* �ҥ�r�� */
  lastupdatedate   char(7) null,                  /* ��Ʋ��ʤ�� */
  primary key (id,beginDate,schoolname,deptname,degree ),
  foreign key(id) references staff
)
go
create table experience ( /* �D�n�g����� */
  id               varchar(10) not null,  /* �����Ҧr�� */
  organization     varchar(40) not null,  /* �A�Ⱦ��� */
  title            varchar(20) not null,  /* ¾�� */
  holdday          varchar(7) not null,   /* ��¾�ͮĤ�� */
  removeday        varchar(7) null,       /* ��¾�ͮĤ�� */
  holddoc          varchar(36) null,      /* ��¾�r�� */
  removedoc        varchar(36) null,      /* �K¾�r�� */
  lastupdatedate   char(7) null,          /* ��Ʋ��ʤ�� */
  primary key(id,holdday),
  foreign key(id) references staff
)
go
create table publication(                 /* �ۧ@��� */
  id varchar(10) not null,                /* �����Ҧr�� */
  type char(1) not null default 'A',      /* �����N�X */
  title varchar(250) not null,            /* ���D */
  author varchar(250) not null,           /* �@�� */
  place varchar(300) not null,            /* �X�B */
  date varchar(6) not null,               /* �褸�X���~�� */
  lastupdatedate char(7) null,            /* ��Ʋ��ʤ�� */
  ci varchar(20) null, /* ���Z�s */
  pid varchar(60) null, /* �p���s�� */
  primary key(id,title,place,date),
  foreign key(id) references staff
)
create index publication_id on publication(id,type)
create index publication_id2 on publication(id)
go

create table studentfee( /* �ǥ�ú�O�O�� */
    year int not null, /* ú�O�Ǵ� */
    studentid varchar(10) not null, /* �Ǹ� */
    dormfee numeric(6,0) not null default 0, /* �J�ٶO�� */
    tuition numeric(6,0) not null default 0, /* �ǶO */
    incidental numeric(6,0) not null default 0, /* ���O */
    basic numeric(6,0) not null default 0, /* �����O��� */
    insurance numeric(5,0) not null default 0, /* ���w�O�I�O */
    overseas numeric(5,0) not null default 0, /* ���O�O */
    ddfee numeric(5,0) not null default 0, /* ��J�O�Ҫ� */
    creditfee numeric(6,0) not null default 0, /* �Ǥ��O */
    langfee numeric(5,0) not null default 0, /* �y����߶O */
    compfee numeric(5,0) not null default 0, /* �q����߶O */
    loan numeric(6,0) not null default 0, /* �U�ǶU�� */
    paid char(1) not null default 'Y', /* �O�_��ú�����O */
    creditpaid char(1) not null default 'Y', /* �O�_��ú�Ǥ��O */
    note varchar(60) null, /* ���� */
    delay char(1) not null default 'N', /* �O�_�n��ú�����O */
    creditloan numeric(6,0) null default 0, /* �Ǥ��O�U�ǶU�� */
    cleanfee numeric(5,0) null default 0, /* �J�ٲM��O */
    gym numeric(5,0) null default 0, /* �B�ʳ]�I�ϥζO */
    primary key(year,studentid),
    foreign key(studentid) references student
)
create index studentfee_sid on studentfee(studentid)
go
create table studentrefund( /* �ǥͰh�O�ƶ� */
    year int not null, /* �h�O�Ǧ~�� */
    studentid varchar(10) not null, /* �Ǹ� */
    amount numeric(6,0) not null default 0, /* �h�O���B */
    refundday varchar(7), /* �h�O��� */
    note varchar(60) null, /* ���� */
    primary key(studentid,refundday),
    foreign key(studentid) references student
)
go
create table dormroom /* ��Ǹ�ƪ� */
(
    roomid varchar(10) not null, /* ��ǽs�� */
    capacity decimal(1,0) not null default 4, /* �H�� */
    sex char(1) not null default 'M', /* �ʧO */
    type char(1) not null default 'B', /* ���O */
    phone varchar(10) null, /* �q�� */
    roomfee numeric(6,0) null default 0, /* ��J�O */
    cleanfee number(5,0) null default 0, /* �M��O */
    primary key(roomid)
)
go
create table applydorm ( /* �ӽбJ�� */
    year int not null, /* ��J�Ǧ~ */
    studentid varchar(10) not null, /* �Ǹ� */
    priority decimal(6,0) not null default 0, /* �u������ */
    accept char(1) not null default 'N', /* �i��J */
    deposit char(1) not null default 'N', /* �n��O�Ҫ� */
    dormnum varchar(10) null, /* ��Ǹ��X */
    primary key(year,studentid),
    foreign key(studentid) references student,
    foreign key(dormnum) references dormroom
)
go
drop table qualify
drop table qualifycourse
drop table qualifyrule
drop table qualifycode
go
create table qualifycode ( /* ���Ҹպ��� */
    code char(2) not null, /* �N�X */
    description varchar(16) not null, /* �W�� */
    primary key(code)
)
go
create table qualifyrule ( /* ���ҸվA�ι�H */
    code char(2) not null, /* �����N�X */
    deptid varchar(3) not null, /* �A�Ψt�� */
    class char(1) not null default 'B', /* �A�ίZ�O */
    start numeric(3,0) not null, /* �}�l�J�Ǧ~ */
    stop numeric(3,0) not null, /* �פ�J�Ǧ~ */
    primary key(code, deptid, class, start, stop),
    foreign key(code) references qualifycode,
    foreign key(deptid) references department,
    foreign key(class) references divicode
)
go
create table qualifycourse ( /* ���ҥ��L���ɽҵ{ */
    code char(2) not null, /* �����N�X */
    courseid varchar(8) not null, /* �Ҹ� */
    examfirst char(1) null default 'Y', /* ���Ҥ~��� */
    primary key(courseid), /* ���Ĳv�Ҷq, ���o����ӥH�W���ҭn�D�P�@���� */
    foreign key(code) references qualifycode,
    foreign key(courseid) references course
)
go
create table qualify ( /* ���Ҹ� */
    studentid varchar(10) not null, /* �Ǹ� */
    code char(2) not null, /* ���ҥN�X */
    year int not null, /* ����Ǧ~�� */
    subject varchar(50) not null, /* �ҸզW�٤��� */
    passed char(1) not null default 'Y', /* �O�_�q�L */
    examdate int not null default 0, /* �Ҹդ�� */
    primary key(studentid,year,subject),
    foreign key(studentid) references student,
    foreign key(code) references qualifycode
)
go
create table highschoolcode ( /* �����N�X��Ӫ� */
    code varchar(4) not null, /* �����N�X */
    name varchar(40) not null, /* �����զW */
    primary key (code)
)
go
create table recdeptcode ( /* ���¨t�N�X�� */
    deptid varchar(4) not null, /* �դ��t�N�X */
    name varchar(60) not null, /* �t�W */
    code varchar(4) not null, /* �j�Ҥ��ߨt�N�X */
    cid char(1) not null, /* �դ��|�N�X */
    start decimal(3,0) not null default 1, /* �_�s���X */
    primary key(code)
)
go
create table uniondeptcode ( /* �p�ۨt�N�X�� */
    deptid varchar(4) not null, /* �դ��t�N�X */
    name varchar(60) not null, /* �t�W */
    code varchar(4) not null, /* �p�ۨt�N�X */
    cid char(1) not null, /* �դ��|�N�X */
    start decimal(3,0) not null default 1, /* �_�s���X */
    primary key(code)
)
go
create table merit ( /* ���g�O�� */
    year int not null, /* �Ǧ~�� */
    studentid varchar(10) not null, /* �Ǹ� */
    citedate varchar(8) not null, /* �O����� */
    amount decimal(1,0) not null default 1, /* �ƶq */
    type char(1) not null, /* ���� */
    note varchar(100) null, /* �ƥ� */
    primary key(studentid, citedate),
    foreign key(studentid) references student
)
go

/* �u�W�N���լd */
create table QuestionVote (	/* �u�W�N���լd���� */
    QVid char(5) NOT NULL ,	/* �N�� */
    year int NOT NULL ,	/* �Ǧ~�� */
    description ntext NOT NULL ,	/* �y�z */
    studentVoteClass char(20) NULL ,	/* �i�벼�ǥͪ����O */
    staffVoteClass char(20) NULL ,	/* �i�벼��¾�������O */
    comment ntext NOT NULL ,		/* �Ƶ� */
    questions tinyint NULL ,	/* ���D�ƥ� */
    BegDate datetime NOT NULL,	/* �լd�_�� */
    EndDate datetime NOT NULL, 	/* �լd���� */
    primary key(QVid)
)
GO
create table QVquestion (	/* �N���լd�D�� */
    QVid char (5) NOT NULL ,	/* �N�� */
    qno tinyint NOT NULL ,	/* �D�ؽs�� */
    question varchar (255) NOT NULL ,	/* �D�ؤ��e */
    items tinyint NULL ,	/* �i�ﵪ�׼ƥ� */
    defaultitem char(1) NULL, 	/* ���׹w�]�� */
    primary key(QVid,qno),
    foreign key(QVid) references QuestionVote
)
GO
create table QVquestionitem (	/* �U�D�إi�ﵪ�� */
    QVid char (5) NOT NULL ,	/* �N�� */
    qno tinyint NOT NULL ,	/* �D�ؽs�� */
    itemno tinyint NOT NULL ,	/* �i�ﵪ�׽s�� */
    itemdescribe varchar(255) NULL, /* ���פ��e */
    primary key(QVid, qno, itemno),
    foreign key(QVid, qno) references QVquestion
)
GO
create table QVStaffAnswer (	/* ��¾���@�����e */
    QVid char(5) NOT NULL ,	/* �N�� */
    answer varchar(50) NULL ,	/* �@�����e */
    comment varchar(255) NULL, 	/* �B�~�N�� */
    id varchar(10) null, /* ID */
    foreign key(QVid) references QuestionVote
)
GO
create table QVStafflog (	/* ��¾���@������ */
    QVid char (5) NOT NULL ,	/* �N�� */
    id varchar (10) NOT NULL ,	/* ��¾�������Ҧr�� */
    voteTime varchar (50) NULL, /* �@������ɶ� */
    primary key(QVid, id),
    foreign key(id) references staff,
    foreign key(QVid) references QuestionVote
)
GO
create table QVStudentAnswer (	/* �ǥͧ@�����e */
    QVid char (5) NOT NULL ,	/* �N�� */
    answer varchar (50) NULL ,	/* �@�����e */
    comment varchar (255) NULL, /* �B�~�N�� */
    id varchar(10) null, /* �Ǹ� */
    foreign key(QVid) references QuestionVote
)
GO
create table QVStudentlog (	/* �ǥͧ@������ */
    QVid char(5) NOT NULL ,	/* �N�� */
    studentid varchar(10) NOT NULL,	/*�ǥ;Ǹ� */
    voteTime varchar(50) NULL, 	/* �@������ɶ� */
    primary key(QVid, studentid),
    foreign key(studentid) references student,
    foreign key(QVid) references QuestionVote
)
GO
create table mutualcourse ( /* ���t�� */
    deptid varchar(3) not null, /* �t�ҥN�X */
    admitdeptid varchar(3) not null, /* �ӻ{�t�� */
    primary key(deptid,admitdeptid),
    foreign key(deptid) references department,
    foreign key(admitdeptid) references department
)
go
create table optioncourse ( /* ��׽ҵ{ */
    deptid varchar(3) not null, /* �t�ҥN�X */
    courseid varchar(8) not null, /* �Ҹ� */
    primary key(deptid,courseid),
    foreign key(deptid) references department,
    foreign key(courseid) references course
)
go
create table literacylecture ( /* �q�����y */
    year varchar(4) not null, /* �Ǧ~�� */
    ser decimal(2) not null,  /* �ĴX�� */
    type char(1) not null, /* ���O */
    title varchar(255) not null, /* ���D */
    speaker varchar(30) not null, /* �t���� */
    date varchar(7) not null, /* ��� */
    primary key (year,ser),
    foreign key(type) references corecode
)
go
create table attendliteracy ( /* �ѥ[�q�����y���� */
    year varchar(4) not null, /* �Ǧ~�� */
    ser decimal(2) not null, /* �ĴX�� */
    studentid varchar(10) not null, /* �Ǹ� */
    pass char(1) not null default ' ', /* �O�_�q�L,ñ��,�W��FTSU */
    checkin_time varchar( 4 ) null,    /* ��d�ɶ� */
    primary key(year,ser,studentid),
    foreign key(year,ser) references literacylecture,
    foreign key(studentid) references student
)
go
create table selectlog ( /* ��Ҭ��� */
  courseid varchar(8) not null, /* �Ҹ� */
  year int not null, /* �Ǧ~�� */
  class varchar(6) not null default '0', /* �Z�O */
  studentid varchar(10) not null, /* �Ǹ� */
  operation char(1) not null default 'A', /* A�[��, D�h�� */
  ip varchar(16) not null, /* ���} */
  ltime datetime not null default getdate(), /* �����ɶ� */
  primary key (courseid,year,class,studentid,ltime),
  foreign key (studentid) references student
)
go
create table budgetcode ( /* �w���إN�X */
    bcode varchar(6) not null, /*���ؽs��*/
    bitem varchar(30) not null, /*�w�ⶵ��*/
    primary key(bcode)
)
go
create table unitbudget (
    year int not null, /* �w��~�� */
    uid	char(4)	not null, /* ���N�X */
    bcode varchar(6) not null, /*���ؽs��*/
    amount decimal(8,0)	not null default 0, /* ���B */
    note varchar(255) not null, /* �Ƶ� */
    primary key(year,uid,bcode),
    foreign key(uid) references unit,
    foreign key(bcode) references budgetcode
)
go
create table unitencouragestudent ( /* �U�����U�Ǫ��M�U */
    yearmonth int not null, /* �~��� */
    uid	char(4) not null, /* ���N�X */
    studentid varchar(10) not null, /* �Ǹ� */
    paytype char(1) not null default 'R', /* ���O, R=RA, T=TA */
    amount decimal(7,0) not null default 0, /* ���B */
    note varchar(255) not null, /* �Ƶ� */
    primary key(yearmonth,uid,studentid,paytype),
    foreign key(uid) references unit,
    foreign key(studentid) references student
)
go
create table studentwork ( /* �ǥͤuŪ���M�U */
    yearmonth int not null, /* �uŪ���~�� */
    studentid varchar(10) not null, /* �Ǹ� */
    uid char(4) not null, /* ���N�X */
    hour decimal(3,0) not null default 0, /* �uŪ�ɼ� */
    rate decimal(3,0) not null default 100, /* �C�p�ɶO�� */
    assist char(1) not null default 'N', /* ���U�� */
    primary key(yearmonth,studentid,uid,rate,assist),
    foreign key(studentid) references student,
    foreign key(uid) references unit
)
go
create table outsidestudentworker ( /* �ե~�uŪ�͸�� */
    id varchar(10) not null, /* �����Ҧr�� */
    name varchar(10) not null, /* �m�W */
    account char(14) not null, /* �l���b�� */
    addr1 varchar(80) not null, /* ���y�a�} */
    zipcode1 varchar(5) not null, /* �l���ϸ� */
    upboundary decimal(3,0) not null default 175, /* �֭�W���ɼ� */
    primary key(id)
)
go
create table outsidestudentwork ( /* �ե~�uŪ���M�U */
    yearmonth int not null, /* �uŪ���~��,yyyymm */
    id varchar(10) not null, /* �����Ҧr�� */
    uid char(4) not null, /* ��� */
    hour decimal(3,0) not null default 0, /* �uŪ�ɼ� */
    rate decimal(3,0) not null default 100, /* �C�p�ɶO�� */
    primary key(yearmonth,id,uid,rate),
    foreign key(id) references outsidestudentworker,
    foreign key(uid) references unit
)
go
create table studentvehicle ( /* �ǥͨ������ */
  vid varchar(8) not null, /* �P�Ӹ��X */
  studentid varchar(10) not null, /* ���D�Ǹ� */
  passid varchar(8) not null, /* �q���Ҹ��X */
  vtype varchar(30) not null, /* �t�P���� */
  inscompany varchar(42) not null, /* �O�I���q */
  insid	varchar(28) not null, /* �O�I�Ҹ��X */
  insoverdue varchar(8) not null, /* �O�I�Ҩ���� */
  carlicensedue varchar(8) not null, /* �樮���Ө���� */
  note varchar(100) not null, /* ���� */
  primary key(vid),
  foreign key(studentid) references student
)
go
create table studentdriverlicense ( /* �ǥ;r�p���Ӹ�� */
    studentid varchar(10) not null, /* �Ǹ� */
    type char(1) not null, /* ���� */
    overdue varchar(8) not null, /* �r�Ө���� */
    primary key(studentid, type),
    foreign key(studentid) references student
)
go
create table trafficcode ( /* �H�W�ƶ��C�� */
  code char(2) not null, /* �H�W���O�N�X */
  description varchar(30) not null, /* �H�W���O�y�z */
  point decimal(3,1) not null default 1, /* �H�W���O���O�I�� */
  primary key(code)
)
go
create table trafficrecord( /* �ǥ͹H�W�ƹ� */
  violateid varchar(10) not null, /* �@��s�� */
  studentid varchar(10)	not null, /* �H�W�Ǹ� */
  vid varchar(8) null, /* ���P���X */
  code char(2) not null, /* �H�W���O�N�X */
  violatedate varchar(8) not null, /* �H�W��� */
  fine decimal(5,0) not null default 0, /* �@�ڪ��B */
  payfine char(1) not null default 'N', /* �O�_�wú�� */
  primary key(violateid),
  foreign key(vid) references studentvehicle,
  foreign key(code) references trafficcode,
  foreign key(studentid) references student
)
go
create table privilegecode /* �v���N�X�� */
(
  pcode varchar(6) not null, /* �v���N�X */
  pname varchar(30) not null, /* �v���W�� */
  note varchar(30) not null, /* �Ƶ� */
  primary key (pcode)
)
go
create table privilege /* �v�� */
(
  pid char(7) not null, /* ¾��N�X */
  pcode varchar(6) not null, /* �v���N�X */
  uid char(4) not null, /* ���N�X */
  detail varchar(6) not null, /* �v���Ӷ� */
  primary key (pid,pcode,uid),
  foreign key(pcode) references privilegecode,
  foreign key(pid) references position,
  foreign key(uid) references unit
)
go
create table advisorcomment ( /* �ɮv���y */
    studentid varchar(10) not null, /* �Ǹ� */
    teacherid varchar(10) not null, /* �ɮv */
    year int not null, /* �Ǧ~�� */
    comment ntext not null, /* ���y */
    primary key(studentid,teacherid,year),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table talkwith ( /* �͸ܬ��� */
    studentid varchar(10) not null, /* �Ǹ� */
    teacherid varchar(10) not null, /* �ɮv */
    talkday varchar(8) not null, /* �X�ͤ�� */
    content ntext not null, /* �͸ܤ��e */
    topic varchar(8) null, /* �͸ܥD�D */
    isopen char(1) null default 'Y', /* �}�񵹤U���ɮv */
    bafflereason varchar(15) null, /* �ǲߧx�Z��] */
    primary key(studentid,teacherid,talkday),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table printtypecode ( /* �C�L������� */
    type varchar(16) not null, /* ���W�� */
    source char(1) not null default '0', /* �n�D�ӷ� */
    price decimal(3,0) not null default 0, /* �C������ */
    printer varchar(40) null, /* �L��� */
    primary key(type, source)
)
go
create table printlog ( /* �����C�L������ */
    printid decimal(8,0) not null, /* �C�Lid */
    studentid varchar(10) not null, /* �Ǹ� */
    class char(1) not null default 'B', /* ���O */
    type varchar(16) not null, /* ������ */
    copy decimal(2,0) not null default 1, /* ���� */
    year int not null default 0, /* �Ǧ~�� */
    email varchar(40) not null, /* �q��email */
    success char(1) not null default 'N', /* �O�_�w�L�X */
    ip varchar(15) not null default '', /* IP */
    ltime datetime not null default getdate(), /* �ӽФ�� */
    price decimal(4,0) not null default 0, /* �`���B */
    receipt varchar(20) null, /* ���ڽs�� */
    printer varchar(40) null, /* �L��� */
    source char(1) null default '0', /* �ӷ��N��, 0�����, �䥦������ */
    primary key(printid),
    foreign key(studentid) references student
)
go
create table project ( /* �M�D�p�� */
    id varchar(10) not null, /* �����Ҧr�� */
    name varchar(255) not null, /* �p���W�� */
    period varchar(20) not null, /* ������{ */
    subsidy varchar(20) not null, /* �ɧU��� */
    pid varchar(22) not null, /* �p���s�� */
    title varchar(10) not null, /* �p�����u�@ */
    primary key(id,name),
    foreign key(id) references staff
)
go
create table patent ( /* �M�Q */
    id varchar(10) not null, /* �����Ҧr�� */
    article varchar(128) not null, /* �M�Q�~�W */
    patentid varchar(20) not null, /* �M�Q�r�� */
    country varchar(10) not null, /* �M�Q��a */
    validdate varchar(8) not null, /* ���Ĵ��� */
    primary key(id,article,patentid),
    foreign key(id) references staff
)
go
create table honor ( /* �ǳN���y�P�a�A */
    id varchar(10) not null, /* �����Ҧr�� */
    title varchar(80) not null, /* ����W�� */
    year varchar(4) not null, /* ����~�� */
    primary key(id,title,year),
    foreign key(id) references staff
)
go
create table commonrank ( /* �q�ѽҵ{���@ */
    year int not null, /* �Ǧ~�� */
    courseid varchar(8) not null, /* �Ҹ� */
    class varchar(6) not null, /* �Z�O */
    studentid varchar(10) not null, /* �Ǹ� */
    rank numeric(2,0) not null default 1, /* ���@��*/
    primary key(studentid,year,rank),
    foreign key(studentid) references student,
    foreign key(courseid,year,class) references opened
)
go

create table leavecode /* �а����O */
(
  code char(1) not null, /* ���O�N�X */
  description varchar(4) not null, /* �а����O */
  primary key(code)
)
go
create table applyleave ( /* �а��� */
  applyleaveid decimal(10,0), /* �а���s�� */
  studentid varchar(10) not null, /* �Ǹ� */
  year int not null, /* �Ǧ~�� */
  applyday varchar(8) not null, /* �ӽФ�� */
  startday varchar(8) not null, /* �}�l��� */
  endday varchar(8) not null, /* �פ��� */
  type char(1) not null, /* ���O */
  approved char(1) not null default '', /* �O�_�֭� */
  reason varchar(128) null, /* �а��ƥ� */
  primary key(applyleaveid),
  foreign key(studentid) references student
)
go
create table leave /* �а��ɶ��� */
(
    applyleaveid decimal(10,0), /* �а���s�� */
    day varchar(8) not null, /* ��� */
    time varchar(12) not null, /* �`�� */
    primary key (applyleaveid, day),
    foreign key (applyleaveid) references applyleave
)
go
create table absence /* �ʽҬ��� */
(
    studentid varchar(10) not null, /* �Ǹ� */
    courseid varchar(8) not null, /* �Ҹ� */
    year int not null, /* �Ǧ~�� */
    day varchar(8) not null, /* ��� */
    time varchar(8) not null, /* �`�� */
    primary key (studentid, courseid, year, day),
    foreign key (studentid,courseid,year) references selected
)
go
create table applyexempt /* ��K�ӽаO�� */
(
    studentid varchar(10) not null, /* �Ǹ� */
    year int not null, /* �ӽоǴ� */
    courseid varchar(8) not null, /* ��K�Ҹ� */
    origname varchar(90) not null, /* ���ئW�� */
    origcredit decimal(2,1) not null, /* ��ҵ{�Ǥ��� */
    approved char(1) not null default '', /* �O�_�֭� */
    internalcid varchar(8) null, /* ����Ҹ� */
    primary key(studentid, year, courseid),
    foreign key(studentid) references student,
    foreign key(courseid) references course,
    foreign key(internalcid) references course
)
create index applyexempt_cid on applyexempt(courseid)
go
create table applyaddcourse /* �H�u�[��O�� */
(
    studentid varchar(10) not null, /* �Ǹ� */
    year int not null, /* �ӽоǴ� */
    courseid varchar(8) not null, /* �[��Ҹ� */
    class varchar(6) not null, /* �Z�O */
    approved char(1) not null default '', /* �O�_�֭� */
    primary key(studentid, year, courseid),
    foreign key(studentid) references student,
    foreign key(courseid,year,class) references opened
)
go
create table groupcourse /* ���ҵ{�� */
(
    deptid varchar(3) not null, /* �t�ҥN�X */
    division char(1) not null default 'B', /* ���O */
    courselist varchar(100) not null, /* �ҵ{�C��, �H','���j */
    start numeric(3,0) not null, /* �}�l�A�ξǦ~(�t) */
    stop numeric(3,0) not null default 999,  /* �̫�A�ξǦ~(�t) */
    mincourse numeric(1,0) not null default 0, /* ����ҵ{�� */
    credit numeric(2,0) not null default 0, /* ����Ǥ���, �P�W�@�����䤤�@�Ӥ��O0�Y�i */
    title varchar(40) null, /* �y�z */
    manditory char(1) null default 'Y', /* �O�_���� */
    primary key(deptid, division, courselist, start, stop),
    foreign key(deptid) references department
)
go
create table yearcourse /* �Ǧ~�ҵ{�� */
(
    deptid varchar(3) not null, /* �t�ҥN�X */
    division char(1) not null default 'B', /* ���O */
    first varchar(8) not null, /* �W�Ǵ��Ҹ� */
    second varchar(8) not null, /* �U�Ǵ��Ҹ� */
    start numeric(3,0) not null, /* �}�l�A�ξǦ~(�t) */
    stop numeric(3,0) not null default 999,  /* �̫�A�ξǦ~(�t) */
    primary key(deptid, division, first, second, start, stop),
    foreign key(deptid) references department,
    foreign key(first) references course,
    foreign key(second) references course
)
go
create table dormmate /* �ߦn�Ǥͪ� */
(
   year int not null, /* �Ǧ~ */
   studentid varchar(10) not null, /* �Ǹ� */
   roommate varchar(10) not null, /* �Ǥ� */
   primary key(year,studentid,roommate),
   foreign key(studentid) references student,
   foreign key(roommate) references student
)
go
create table healthexam /* �ǥ����˪� */
(
    year int not null, /* �Ǧ~ */
    studentid varchar(10) not null, /* �Ǹ� */
    weight decimal(4,1) not null default 0, /* �魫 */
    height decimal(4,1) not null default 0, /* ���� */
    chestxray char(1) not null default '0', /* �ݳ�X���ˬd,0���`1���` */
    glucose char(1) not null default '0', /* ���},0��1�� */
    proteinuria char(1) not null default '0', /* ���J��,0��1�� */
    UrinarypH decimal(3,1) not null default 0, /* �����P�� */
    OccultBlood char(1) not null default '0', /* ������,0��1���e���� */
    Hb decimal(4, 1) not null default 0, /* ���� */
    RBC decimal(4,1) not null default 0, /* ����y(�ʸU) */
    WBC decimal(5,0) not null default 0, /* �զ�y */
    PL decimal(4, 0) not null default 0, /* ��p�O(�d) */
    CholesterolTotal decimal(3,0) not null default 0, /* �`�x�T�J */
    serumCreatinine decimal(4,2) not null default 0, /* ��M�ٻ��� */
    HBsAg char(1) not null default '0', /* B���x�����ܭ�,0��1�� */
    HBsAb char(1) not null default '0', /* B���x��������,0��1�� */
    HBcAb char(1) not null default '0', /* B���x���֤ߧ���,0��1�� */
    AntiHCV char(1) not null default '0', /* C���x���f�r����,0��1�� */
    GPT decimal(4,0) not null default 0, /* �x�\��GPT */
    GOT decimal(4,0) not null default 0, /* �x�\��GOT */
    VDRL char(1) not null default '0', /* ���r��M����,0��1�� */
    triglyceride int null default 0, /* �T�ĥ̪o�� */
    uricacid float null default 0, /* ���� */
    systolicpressure smallint null defaul 0, /* ���Y�� */
    diastolicpressure smallint null default 0, /* �αi�� */
    pulse smallint null default 0, /* �߷i */
    bloodsugar smallint null default 0, /* ��} */
    primary key(studentid,year),
    foreign key(studentid) references student
)
go
create table maclist /* ���d�C�� */
(
    mac char(12) not null, /* mac address */
    uid varchar(10) not null, /* �Ǹ��Ψ����Ҧr�� */
    note varchar(30) null, /* ���� */
    ltime datetime null default getdate(), /* �����ɶ� */
    primary key(mac,uid)
)
go
create table teammember /* �ն��W�� */
(
    team varchar(2) not null, /* �ն��N�X */
    studentid varchar(10) not null, /* �Ǹ� */
    primary key(team,studentid),
    foreign key(studentid) references student,
    foreign key(team) references teamcode
)
go
create table courseopinion /* �оǦ^�X */
(
    id int not null, /* �Ǹ� */
    studentid varchar(10) not null, /* �Ǹ� */
    courseid varchar(8) not null, /* �Ҹ� */
    year int not null, /* �Ǧ~�� */
    class varchar(6) not null, /* �Z�O */
    opdate varchar(8) not null, /* �N����� */
    opinion ntext null, /* �N�� */
    responsetype char(1) not null default 'N', /* �^�Ф覡,N�|���^��,1�u�W�^���ǥ�,2�Ұ�W�^���ǥ�,3�ǥͷN���s�� */
    responser varchar(10) null, /* �^�ФH */
    responsedate varchar(8) null, /* �^�Ф�� */
    response ntext null, /* �^�Ф�r */
    askreply char(1) null default 'N', /* �ǥͭn�D�Ѯv�n�^�� */
    primary key(id),
    foreign key(courseid, year, class) references opened,
    foreign key(studentid) references student,
    foreign key(responser) references staff
)
go
create table assistancerequest /* ���ɻݨD�� */
(
    id int not null, /*  �Ǹ� */
    studentid varchar(10) not null, /* �Ǹ� */
    teacherid varchar(10) not null, /* �ɮv */
    reqdate varchar(8) not null, /* ���X��� */
    reqtype varchar(7) null, /* 0�ҷ~,1����,2�g��,3��L */
    reqdetail ntext null, /* �ԲӤ��e */
    primary key(id),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table assistancemail /* �शemail */
(
    type varchar(10) not null,
    mainmail varchar(60) null,
    ccmail varchar(60) null,
    primary key(type)
)
go
create table abilityitem /* �֤߯�O���� */
(
    deptid varchar(3) not null, /* �t�N�X */
    ser tinyint not null, /* �Ǹ� */
    itemtitle nvarchar(40) not null, /* �֤߯�O */
    class char(1) null default 'B', /* ���O */
    primary key(deptid,ser),
    foreign key(deptid) references department
)
go
create table careergroup /* ¾�P���� */
(
    deptid varchar(3) not null, /* �t�N�X */
    ser tinyint not null, /* �Ǹ� */
    itemtitle nvarchar(30) not null, /* ¾�P�W�� */
    primary key(deptid, ser),
    foreign key(deptid) references department
)
go
create table lessonguidance /* �һ� */
(
    year int not null, /* �Ǵ� */
    studentid varchar(10) not null, /* �Ǹ� */
    courseid varchar(8) not null, /* �Ҹ� */
    guider varchar(10) null, /* �p�Ѯv */
    accept char(1) not null default 'N', /* �q�L�ӽ� */
    time varchar(3) null, /* �ɬq */
    stage char(1) not null, /* �ӽж��q */
    primary key(year,studentid,courseid),
    foreign key(studentid) references student,
    foreign key(courseid) references course,
    foreign key(guider) references student
)
go
create table concernedstudent /* �����h�W�� */
(
    studentid varchar(10) not null, /* �Ǹ� */
    beginy int not null, /* �}�l�Ǵ� */
    endy int null, /* �����Ǵ� */
    beginreason varchar(30) null, /* �i�J��] */
    endreason varchar(30) null, /* ���}��] */
    primary key(studentid, beginy),
    foreign key(studentid) references student
)
go
drop table changepasslog
go
create table changepasslog ( /* �ק�K�X�O�� */
    id varchar(10) not null, /* �b�� */
    operation char(1) not null default 'C', /* C���, R���] */
    ip varchar(16) not null, /* ���} */
    ltime datetime not null default getdate(), /* �����ɶ� */
    primary key(id,ltime)
)
go
drop table rd_project_perfee
drop table rd_project_member
drop table rd_project
drop table projecttypecode
drop table projmembercode
drop table projmlevelcode
go
create table projecttypecode (
    code varchar(1) not null, /* ���O�W */
    description varchar(40), /* ���O�W */
    primary key(code)
)
go
insert projecttypecode(code,description) values('A','���|(�t���l�ڭp�e)')
insert projecttypecode(code,description) values('B','�رСB���ǦX�@�p�e(�t���l�ڭp�e)')
insert projecttypecode(code,description) values('C','�Ш|��(�D�U�ݫǭp��)')
insert projecttypecode(code,description) values('D','�Ш|��(�U�ݫǭp��)')
insert projecttypecode(code,description) values('E','���s�Ш|��')
insert projecttypecode(code,description) values('F','��L')
go
create table rd_project (               /* ��o�B�C�ޭp�� */
    year          smallint not null,            /* �~�� */
    college       varchar(16)  null,            /* �|(�ӽЮɭ�l���) */
    depart        varchar(255) null,            /* �t��(�ӽЮɭ�l���) */
    deptid        varchar(3) null,              /* �t�ҥN�X(�H�{��аȨt�ά���) */
    leader        nvarchar(50) not null,        /* �D���H */
    position      varchar(8) null,              /* ¾�� */
    type          char(1) not null ,            /* �p������ */
    agency        varchar(20) null,             /* �e�U���c */
    name          nvarchar(255) not null,       /* �p���W�� */
    pjid          varchar(50) not null,         /* �p���s�� */
    begindate     varchar(8) null,              /* ��������_ */
    enddate       varchar(8) null,              /* ��������� */
    amount        int not null default 0,       /* �֩w���B  */
    personnelfee  int null default 0,           /* �H�ƶO�� */
    business      int null default 0,           /* �~�ȶO�� */
    managefee     int null default 0,           /* �޲z�O�� */
    coordinatefee int null default 0, /* �t�X�� */
    equipmentfee  int null default 0, /* �]�ƶO */
    phdmember tinyint default 0, /* �կZ�ݥ��W�� */
    mastermember tinyint default 0, /* �ӯZ�ݥ��W�� */
    bachelormember tinyint default 0, /* �ǯZ�ݥ��W�� */
    memo          ntext null,                   /* �Ƶ� */
    reset         ntext null,                   /* �ܧ� */
    external      char(1) not null default 'N', /* �ե~�D���H */
    primary key(pjid)
)
go
create table projmembercode (
    code char(1) not null,
    description varchar(10) not null,
    primary key(code)
)
go
insert projmembercode(code,description) values('A','�D���H')
insert projmembercode(code,description) values('B','�@�P�D���H')
insert projmembercode(code,description) values('C','��P�D���H')
insert projmembercode(code,description) values('D','�M���U�z')
insert projmembercode(code,description) values('E','�ݥ��U�z')
insert projmembercode(code,description) values('F','�{�ɤH��')
go
create table projmlevelcode ( /* �p���H���ŧO�N�X */
    code char(1) not null,
    description varchar(16) not null,
    primary key(code)
)
go
insert projmlevelcode(code,description) values('A','�M������(¾)')
insert projmlevelcode(code,description) values('B','�M����(�G)�M')
insert projmlevelcode(code,description) values('C','�M���T�M')
insert projmlevelcode(code,description) values('D','�M���Ǥh')
insert projmlevelcode(code,description) values('E','�M���Ӥh')
insert projmlevelcode(code,description) values('F','�M���դh')
insert projmlevelcode(code,description) values('G','�ݥ����v��')
insert projmlevelcode(code,description) values('H','�ݥ��U�Я�')
insert projmlevelcode(code,description) values('I','�ݥ��j�M�ǥ�')
insert projmlevelcode(code,description) values('J','�ݥ��Ӥh�Z��s��')
insert projmlevelcode(code,description) values('K','�ݥ��դh�Z��s��')
insert projmlevelcode(code,description) values('L','�ݥ��դh�Կ�H')
go

create table rd_project_member (   /* ��o�B�C�ޭp���H�� */
    pjid          varchar(50) not null ,  /* �p���s�� */
    studentid     varchar(10) null,   /* �Ǹ� */
    id            varchar(10) not null,   /* �����Ҹ� */
    type char(1) not null default 'A', /* -->projmembercode */
    level char(1) null, /* �ŧO-->projmlevelcode */
    approved char(1) not null default 'Y', /* �w�q�L�f�� */
    name  nvarchar(20) not null, /* �m�W */
    account varchar(14) null, /* �l���b�� */
    salary smallint null, /* ���~ */
    email varchar(60) null, /* email */
    work                 nvarchar(100) null,    /* �u�@���e */
    begindate            varchar(8),         /* ��¾�}�l�~��� */
    enddate              varchar(8),         /* �u�������~��� */
    memo                 ntext,             /* �Ƶ�  */
    primary key(pjid, id, begindate),
    foreign key(pjid) references rd_project(pjid),
    foreign key(studentid) references student
)
go
create table rd_project_perfee ( /* �p���H�ƶO�� */
    pjid          varchar(50) not null,  /* �p���s�� */
    id            varchar(10) not null,  /* �����Ҹ� */
    name  nvarchar(20) not null, /* �m�W */
    account varchar(14) null, /* �l���b�� */
    yearmonth     int not null, /* �~�� */
    pay           int null, /* �O�� */
    tax           int null, /* �ұo�| */
    laborfee      int null, /* �ҫO */
    healthfee     int null, /* ���O */
    retirefee     int null, /* �h¾�� */
    supportlaborfee      int null, /* �����ҫO */
    supporthealthfee     int null, /* �������O */
    supportretirefee     int null, /* �����h¾�� */
    type char(1) not null default 'D', /* �P��u�঳�P���� */
    confirmed char(1) not null default 'N', /* �O�_�w�T�{���B */
    primary key(pjid,id,yearmonth),
    foreign key(pjid) references rd_project
)
go
drop table osconfparticipant /* ���p�P�|�H */
drop table whowillosshow /* �Ш|�i�Ѯi�H�� */
drop table whocanosshow /* �Ш|�i���ܾǮ� */
drop table osconference /* ���p�|ĳ */
drop table osshow /* ���p�Ш|�i */
drop table osmember /* ���p���� */
drop table osconftypecode /* ���p�|ĳ���O */
drop table osmembertypecode /* ���p�������O */
go
create table osmembertypecode ( /* ���p�������O */
    code char(1) not null,
    description varchar(12) null,
    primary key(code)
)
go
insert osmembertypecode(code, description) values('A', '�`�ȩe���Ǯ�')
insert osmembertypecode(code, description) values('B', '���վǮ�')
insert osmembertypecode(code, description) values('C', '�C�u���')
insert osmembertypecode(code, description) values('D', '�e���Ǯ�')
insert osmembertypecode(code, description) values('E', '��L���')
go
create table osmember (
    membercode char(2) not null, /* ���N�X */
    membertype char(1) not null, /* �����ݩ�-->osmembertypecode */
    chineseName varchar(50) not null, /* ���W�� */
    phone varchar(30) null, /* �q�� */
    fax varchar(30) null, /* �ǯu */
    title varchar(20) null, /* �ӿ�H¾�� */
    usercname nvarchar(5) null, /* �ӿ�H�m�W */
    userphone varchar(20) null, /* �ӿ�H�q�� */
    usercellular varchar(10) null, /* �ӿ�H��� */
    email varchar(40) null, /* �ӿ�Hemail */
    id varchar(10) null, /* �ӿ�H�����Ҹ� */
    address	varchar(128) not null, /* �ӿ�H���y�a�} */
    account	varchar(16) null, /* �b�� */
    encpass char(128) null, /* SHA512 */
    primary key(membercode)
)
go
create table osconftypecode ( /* ���p�|ĳ���O */
    code char(1) not null,
    description varchar(10) null,
    primary key(code)
)
go
insert osconftypecode(code,description) values('A', '�`�e�|')
insert osconftypecode(code,description) values('B', '�j�|')
go
create table osconference ( /* ���p�|ĳ */
    confid varchar(5) not null, /* �|ĳ�s�� */
    isopened char(1) not null default 'Y', /* �}��լd */
    openbefore varchar(20) null, /* �^�д��� */
    conftitle varchar(30) not null, /* �|ĳ�W�� */
    conftype char(1) null, /* ���O-->osconftypecode */
    whichday varchar(7) not null, /* ��� */
    time varchar(30) not null, /* �ɶ� */
    place varchar(80) null, /* �a�I */
    contactor nvarchar(5) null, /* �p���H */
    contactorphone varchar(20) null, /* �p���H�q�� */
    contactoremail varchar(40) null, /* �p���Hemail */
    hasfood char(1) not null default 'N', /* �����\ */
    transporttypes tinyint default 0, /* ��q�覡��ܼ� */
    transportmemo ntext null, /* ��q�覡�ﶵ */
    memo ntext null, /* ���� */
    appendix image null, /* �|ĳ���� */
    record image null, /* �|ĳ�O�� */
    primary key(confid)
)
go
create table osconfparticipant ( /* ���p�P�|�H */
    confid varchar(5) not null, /* �|ĳ�s�� */
    membercode char(2) not null, /* ���N�X */
    willattend char(1) not null default 'Y', /* �O�_�ѥ[ */
    attendname nvarchar(5) null, /* �P�|�H�m�W */
    attendtitle varchar(30) null, /* �P�|�H¾�� */
    attendphone varchar(30) null, /* �P�|�H�q�� */
    attendcellular varchar(20) null, /* �P�|�H��� */
    attendemail varchar(40) null, /* �P�|�Hemail */
    attendid varchar(10) null, /* �P�|�H�����Ҹ� */
    attendaddress varchar(128) null, /* �P�|�H���y�a�} */
    foodchoice char(1) null, /* 1��2�� */
    transchoice char(1) null, /* ��q�覡 */
    note varchar(50) null, /* �䥦 */
    primary key(confid, membercode),
    foreign key(confid) references osconference,
    foreign key(membercode) references osmember
)
go
create table osshow ( /* ���p���� */
    showid varchar(4) not null, /* ���ʽs�� */
    isopened char(1) not null default 'Y', /* �}��լd */
    automail char(1) null default 'Y', /* �o�H�q�� */
    showtitle varchar(30) not null, /* �Ш|�i�W�� */
    openbefore varchar(20) null, /* �^�д��� */
    whichday varchar(30) not null, /* ��� */
    place varchar(80) null, /* �a�I */
    contactor nvarchar(5) null, /* �p���H */
    contactorphone varchar(20) null, /* �p���H�q�� */
    contactoremail varchar(40) null, /* �p���Hemail */
    askpassport char(1) null default 'N', /* �լd�@�� */
    asktransport char(1) null default 'N', /* �լd��q */
    askhotel char(1) null default 'N', /* �լd���� */
    replymemo nvarchar(200) null, /* �ӤH�^������ */
    memo ntext null, /* ���� */
    appendix image null, /* �Ш|�i���� */
    primary key(showid)
)
go
create table whocanosshow ( /* ���ʨ��ܳ�� */
    showid varchar(4) not null, /* ���ʽs�� */
    membercode char(2) not null, /* ���N�X */
    name nvarchar(5) not null, /* �p���H�m�W */
    title varchar(20) null, /* �p���H¾�� */
    phone varchar(20) null, /* �p���H�q�� */
    email varchar(40) null, /* �p���Hemail */
    primary key(showid, membercode),
    foreign key(showid) references osshow,
    foreign key(membercode) references osmember
)
go
create table whowillosshow ( /* ���ʰѻP�H */
    showid varchar(4) not null, /* ���ʽs�� */
    membercode char(2) not null, /* ���N�X */
    attendname nvarchar(5) not null, /* �ѻP�H�m�W */
    attendename varchar(30) not null, /* �Ѯi�H�^��W */
    attendtitle varchar(30) not null, /* �Ѯi�H¾�� */
    attendphone varchar(30) not null, /* �Ѯi�H�q�� */
    attendemail varchar(40) not null, /* �Ѯi�Hemail */
    passport varchar(10) null, /* �@�Ӹ��X */
    godate varchar(15) null, /* �h�{��� */
    gotime varchar(15) null, /* �h�{�ɶ� */
    goflight varchar(15) null, /* �h�{��Z */
    backdate varchar(15) null, /* �^�{��� */
    backtime varchar(15) null, /* �^�{�ɶ� */
    backflight varchar(15) null, /* �^�{��Z */
    hotel varchar(40) null, /* �����W�� */
    roomtype char(1) null, /* �Ы� */
    roommemo nvarchar(30) null, /* �ж����� */
    reply nvarchar(500) null, /* �^�����e */
    photo image null, /* �ӤH�ۤ� */
    primary key(showid, membercode, attendname),
    foreign key(showid, membercode) references whocanosshow
)
go
/************* store procedure *****************/

create procedure usp_insert_attendliteracy( @year varchar(4),  @ser decimal(2), @studentid varchar(10), @checkin_time varchar(4) ) AS
/* ��d��ñ���H�u keyin �M�� */
if exists ( select studentid from attendliteracy where [year] = @year and ser = @ser and studentid = @studentid )
begin
    /* �w����d���� */
    /* ñ�� : @chekin_time = 'ñ��' */
   update attendliteracy
     set checkin_time = @checkin_time
     where year = @year and
           ser = @ser and
           studentid = @studentid
     return 0 /* OK */
end
else
begin
     /* �S����d���� */
     if exists ( select studentid from student where studentid = @studentid )
     begin
        insert attendliteracy( year, ser, studentid, checkin_time )
               values( @year, @ser, @studentid, @checkin_time )
        return 0 /* OK */
     end
     else
     begin
        return -1 /* ERROR */
     end
end
/************* store procedure *****************/


create procedure usp_update_attendliteracy( @year varchar(4), @ser decimal(2), @studentid varchar(10), @pass char(1) ) AS
/* ú��@�~�M�� */
if exists (select studentid from attendliteracy where year = @year and ser = @ser and studentid = @studentid)
begin
   update attendliteracy
     set pass = @pass
     where year = @year and
           ser = @ser and
           studentid = @studentid
     return 0 /* OK */
end
else
begin
     return -1 /* �S����d������ñ��O�� */
end
go

/************* store procedure *****************/


create procedure usp_update2_attendliteracy( @year varchar(4), @ser decimal(2), @studentid varchar(10), @pass char(1) ) AS
/* ú��@�~�M�� */
if exists (select studentid from attendliteracy where year = @year and ser = @ser and studentid = @studentid)
begin
   update attendliteracy
     set pass = @pass
     where year = @year and
           ser = @ser and
           studentid = @studentid
     return 0 /* OK */
end
else
begin
   insert attendliteracy( year, ser, studentid, checkin_time, pass )
           values( @year, @ser, @studentid, 'ñ��', @pass )
     return 0 /* OK */
end
go

/************* store procedure *****************/


create procedure usp_query_attendliteracy( @year varchar(4), @ser decimal(2), @studentid varchar(10)) AS
/* ú��@�~�M�� */
select pass from attendliteracy where year = @year and ser = @ser and studentid = @studentid

go
CREATE PROCEDURE staff_email_list AS
    select unit.uabbrname, position.title, staff.name, staff.email, unit.uid,  position.officetype, staff.stafftype
    from position,unit,staff
    where position.id = staff.id and
          position.uid = unit.uid and
          staff.workstatus = 'A' and
          officetype = '1' and
          staff.email is not null and staff.email <> ''

    order by position.pid
GO

CREATE PROCEDURE staff_login (@id char(10),@pwd char(20)) AS
    select unit.uabbrname, position.title, staff.name, staff.email, unit.uid,  position.officetype, staff.stafftype, position.pid
    from position,unit,staff
    where position.id = @id and
          position.uid = unit.uid and
          position.stafftype <> 'P' and
          staff.id = @id and
          staff.password = @pwd and
          staff.workstatus = 'A'
    order by  position.officetype, position.uid
GO

CREATE PROCEDURE std_login (@studentid char(10),@pwd char(20)) AS
    select department.cname, divicode.description,
           student.grade,student.studentid, student.name, student.email
           from student,department,divicode
           where (status = '0'  or  status = '5') and
                 studentid=@studentid and
                 password = @pwd and
                 student.deptid = department.deptid
                 and student.class = divicode.code
GO

CREATE PROCEDURE staff_qvote (@id char(10), @QVid char (5), @answer varchar (50), @comment varchar (255) ) AS
   DECLARE @ERR_CODE integer
   if exists( select id
               from QVStafflog
               where id = @id and
                     QVid = @QVid and
                     voteTime is null )
   begin
      update QVStafflog
             set voteTime = getdate()
             where id = @id and
                     QVid = @QVid

      insert QVStaffAnswer( QVid, answer, comment )
             values( @QVid, @answer, @comment )

      SET @ERR_CODE = 0   -- OK
   end
   else
   begin
     if exists( select id
               from QVStaffLog
               where id = @id and
                     QVid = @QVid and
                     voteTime is not null )
        SET @ERR_CODE = 1   -- ERROR
     else
        SET @ERR_CODE = 2   -- ERROR
   end
   select @ERR_CODE
GO

CREATE PROCEDURE std_qvote (@studentid char(10), @QVid char (5), @answer varchar (50), @comment varchar (255) ) AS
   DECLARE @ERR_CODE integer
   if exists( select studentid
               from QVStudentLog
               where studentid = @studentid and
                     QVid = @QVid and
                     voteTime is null )
   begin
      update QVStudentLog
             set voteTime = getdate()
             where studentid = @studentid and
                     QVid = @QVid

      insert QVStudentAnswer( QVid, answer, comment )
             values(@QVid, @answer, @comment )

      SET @ERR_CODE = 0   -- OK
   end
   else
   begin
     if exists( select studentid
               from QVStudentLog
               where studentid = @studentid and
                     QVid = @QVid and
                     voteTime is not null )
        SET @ERR_CODE = 1   -- ERROR
     else
        SET @ERR_CODE = 2   -- ERROR
   end
   select @ERR_CODE
GO

/*---------------------------------------------*/
CREATE PROCEDURE unit_email_list AS
    select layer, uid, belong, attrib, ufullname, uabbrname, email, manager
    from unit
    where email is not null
    order by uid
GO