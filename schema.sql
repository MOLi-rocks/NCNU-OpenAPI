/* 校務系統資料綱要設定程式
   作者：俞旭昇Shiu-Sheng Yu
   2004/02/26, 加入核准儘後召集延長日期等4個欄位
   2004/05/10, 新增commonrank表格
   2004/05/19, opened加入limitdeptid
   2005/01/20, publication增加primary key 欄位, place改為not null
   2005/02/19, staff.phone2增長為varchar(24)
   2005/09/16, opened加入plimit各系限修人數功能
   2005/11/07, student加入deptrank, 增加restcode(休學原因代碼)
   2005/11/09, 新增groupcourse(必選課程表)
   2005/11/17, studentfee 刪除 remit(抵免),reimburse(退費);加入paid(已繳費)
   2005/11/29, student 加入jobstatus. 新增jobstatuscode
   2005/12/28, student加入lessoraddress,lessor,lessorphone欄位,刪除dormnum欄位
   2005/12/29, applydorm加入dormnum欄位, exempt加入internalcid(內抵課號)
   2006/01/02, 加入dormmate(室友表), 加入applyexemptcode(申請抵免代碼)
   2006/01/04, 加入roomtype(寢室分類表)
   2006/01/18, 加入healthexam, posnegcode,abnormalcode
   2006/02/17, student.entrydiploma(入學學歷)長度改為90,系所中文簡稱長度改為12
   2006/05/03, 加入ta資料表
   2006/06/13, 加入dailyusage統計表
   2006/10/26, 加入tutor導師, 原先之advisor改為指導教授
   2006/12/07, printtypecode,printlog加入printer欄位, 使不同文件可以印到不同印表機
   2006/12/09, 移除table schoolcode, 相關設定移到driver.DB.txt
   2006/12/10, 新增qualifycode, qualifycourse, qualifyrule, qualify表格
   2007/03/20, department加入學雜費
   2007/04/26, outcredit 加入division
   2007/12/20, course加入課程簡稱, 負責系所
   2007/12/21, student加入poorhonest
   2008/07/07, student加入lastdegree,yearincome
   2008/07/16, 改opened.place長度==>20
   2009/02/20, 改opened.place長度==>32
   2009/03/05, unit加入業務權限, A教B學C總
   2009/03/09, 新增表格teamcode,teammember
   2009/06/25, 新增opened.inenglish
   2009/09/10, 新增opened.tafee
   2009/09/15, 新增tequestion.coursetype(限用課程),opened.evaltype
   2009/10/27, 將所有的text改為ntext
   2009/12/02, 新增tequestion.needcount(列入總分計算),selected.tereject
   2010/02/01, 新增whoudouble and whoassist有關系名欄位
   2010/03/06, 新增courseopinion
   2010/04/14, 新增assistancerequest
   2010/04/18, 新增abilityitem, careergroup
   2010/06/10, course.ability增長為20
   2010/06/17, healthexam 加入 systolicpressure, diastolicpressure, pulse, bloodsugar
   2010/08/12, student.autobiography
   2010/08/16, lessonguidance, concernedstudent
   2011/01/18, abilityitem加入class
   2011/02/10, opened.limitdeptid增長為30
   2011/06/03, osshow加入調查選項設定
   2012/03/18, 將各種year改為int型態, 以便正確排序
   2012/05/29, 加入applyaddcourse表格
   2012/08/31, 加入opened.limitgrade
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
create table practicetypecode /* 非講授課程代碼表 */
(
    code char(1) not null, /* 代碼 */
    description varchar(40), /* 名稱 */
    primary key(code)
)
go
create table tetypecode /* 教學意見調查課程類別碼 */
(
    code char(1) not null, /* 代碼 */
    description varchar(10), /* 名稱 */
    primary key(code)
)
go
create table teamcode /* 校隊代碼表 */
(
    code varchar(2) not null, /* 代碼 */
    description varchar(12) not null, /* 隊名 */
    time varchar(40) null, /* 集訓時段 */
    primary key(code)
)
go
create table officetypecode ( /* 專兼任職缺 */
    code char(1), /* 1專, 2兼 */
    description char(4) not null,
    primary key(code)
)
go
create table posnegcode ( /* 健康檢查陰性(0)陽性(1)代碼表 */
    code char(1) not null, /* 代碼 */
    description varchar(6) not null, /* 描述 */
    primary key(code)
)
go
create table abnormalcode ( /* 健康檢查正常(0)異常(1) */
    code char(1) not null, /* 代碼 */
    description varchar(6) not null, /* 描述 */
    primary key(code)
)
go
/*
 B: 學士班
 G: 碩士班
 P: 博士班
 1: 休養室
 2: 加長床
 3: 器材室
 4: 教官室
 */
create table roomtype ( /* 寢室分類代碼表 */
    code char(1) not null, /* 代碼 */
    description varchar(6) not null, /* 描述 */
    primary key(code)
)
go
/*
'A' 碩士班
'B' 博士班
'C' 就業
'D' 服役
'E' 待業
'F' 退休
*/
create table jobstatuscode ( /* 校友現況代碼表 */
    code char(1) not null, /* 現況代碼 */
    description varchar(6), /* 現況描述 */
    primary key(code)
)
go
/*
'A','經濟因素'
'B','健康因素'
'C','學業因素'
'D','工作因素'
'E','家庭因素'
'F','個人因素'
'G','兵役因素'
'H','其他因素'
'I','懷孕因素'
'J','分娩因素'
'K','撫育因素'

*/
create table restcode( /* 休學原因代碼表 */
  code char(1) not null,
  description varchar(10) not null,
  primary key(code)
)
go
/*
1   職業聯結車
2   職業大客車
3   職業大貨車
4   職業小型車
5   普通聯結車
6   普通大客車
7   普通大貨車
8   普通小型車
9   普通重型機踏車
A   普通輕型機踏車
B   普通馬達三輪貨車
C   軍用大客車
D   軍用載客車
E   軍用小型車
F   國際（外國）駕駛
G   其他駕照（證）
H   學習駕駛證
*/
create table driverlicensecode ( /* 駕照種類代碼 */
    code char(1) not null, /* 駕照種類代碼 */
    description varchar(16) not null, /* 種類*/
    primary key(code)
)
go
/*
  A:警告
  B:申誡
  C:小過
  D:大過
  E:嘉獎
  F:小功
  G:大功
 */
create table meritcode ( /* 獎懲類別 */
  code char(1) not null, /* 獎懲類別 */
  description varchar(8) not null, /* 獎懲類別說明 */
  point decimal(4,1) not null default 0, /* 加分 */
  primary key(code)
)
go
/*
  A: 重度身心障礙
  B: 中度身心障礙
  C: 輕度身心障礙
  D: 因公撫恤
  E: 因病撫恤
  F: 撫恤期滿
  G: 低收入戶子女
  H: 原住民子女
  I: 現役軍人子女
  J: 921
  K: 年收入40萬以下
  L: 年收入60萬以下
  M: 特殊境遇婦女
  N: 收入30萬以下
  O: 收入30-40萬
  P: 收入40-50萬
  Q: 收入50-60萬
  R: 收入60-70萬
  S: 莫拉克
  T: 交換或外國學生
 */
create table remitcode ( /* 減免類別 */
  code char(1) not null, /* 減免類別 */
  description varchar(14) not null, /* 減免類別說明 */
  primary key(code)
)
go
create table divicode ( /* 部別 */
  code char(1) not null, /* 部別 */
  description varchar(6) not null, /* 部別 */
  primary key(code)
)
go
create table exemptcode ( /* 內外抵, 0內, 1外*/
  code char(1) not null, /* 抵免類別 */
  description varchar(4) not null, /* 抵免名稱 */
  primary key(code)
)
go
create table applyexemptcode ( /* 內外抵, 0內, 1外, N不准 */
  code char(1) not null, /* 抵免類別 */
  description varchar(4) not null, /* 抵免名稱 */
  primary key(code)
)
go
/*    核心課程類別              */
/*    =================         */
create table corecode ( /* 核心類別 */
  code char(1) not null, /* 核心類別代碼 */
  description varchar(20) not null, /* 核心名稱 */
  primary key(code)
)
go
/*        學生狀態代碼          */
/*    ===================       */
/*     0 -> 在學                */
/*     1 -> 休學                */
/*     2 -> 保留學籍            */
/*     3 -> 退學                */
/*     4 -> 肆業                */
/*     5 -> 畢業                */
create table stustatuscode ( /* 學生狀態代碼表 */
  code char(1) not null, /* 學生狀態代碼 */
  description varchar(8) not null, /* 學生狀態 */
  primary key(code)
)
go
/*        論文分類代碼    */
/*    =================== */
/*    A->期刊論文         */
/*    B->會議論文         */
/*    C->學術專書         */
/*    D->學位論文         */
/*    E->技術報告         */
/*    F->譯作             */
/*    G->教科書           */
/*    H->一般文學         */
/*    I->其他             */
create table dissertationcode ( /* 論文分類代碼檔 */
  code char(1) not null, /* 論文分類代碼 */
  description varchar(8) not null, /* 論文分類 */
  primary key(code)
)
go
/*        修業狀況代碼          */
/*    ===================       */
/*     0 -> 其他                */
/*     1 -> 畢業                */
/*     2 -> 結業                */
/*     3 -> 肆業                */
create table schoolingcode ( /* 修業狀況代碼檔 */
  code char(1) not null, /* 修業狀況代碼 */
  description varchar(6) not null, /* 修業狀況 */
  primary key(code)
)
go
/*        教育程度代碼          */
/*    ===================       */
/*     10 -> 國小               */
/*     21 -> 國中               */
/*     22 -> 初職               */
/*     23 -> 簡易師範           */
/*     31 -> 高中               */
/*     32 -> 高職               */
/*     33 -> 師範               */
/*     41 -> 二專               */
/*     42 -> 三專               */
/*     43 -> 五專               */
/*     44 -> 六年制醫專         */
/*     50 -> 大學               */
/*     60 -> 碩士               */
/*     70 -> 博士               */
/*     71 -> 榮譽博士           */
/*   1X -> 國小                 */
/*   2X -> 國(初)中             */
/*   3X -> 高中(職)             */
/*   4X -> 專科                 */
/*   5X -> 大學                 */
/*   6X -> 碩士                 */
/*   7X -> 博士                 */
create table edulevelcode ( /* 教育程度代碼檔 */
  code            char(2)  not null,    /* 教育程度代碼 */
  description     varchar(12) not null,    /* 教育程度 */
  primary key (code)
)
go
/*        在職狀態              */
/*    ===================       */
/*      A -> 在職               */
/*      B -> 借調               */
/*      C -> 留職停薪           */
/*      D -> 育嬰假             */
/*      E -> 延長病假           */
/*      F -> 休假研究           */
/*      G -> 停職               */
/*      H -> 退休               */
/*      I -> 離職、資遺         */
/*      J -> 兼職(教師)         */
/*      K -> 停止兼職(教師)     */
/*                              */
/*   A-F -> 在職                */
/*   G-I -> 退離職              */
/*   J -> 兼職(教師)            */
/*   K -> 停止兼職(教師)        */
create table workcode ( /* 人員在職狀態代碼檔 */
  code            char(1)  not null,    /* 人員在職狀態代碼 */
  description     varchar(20) not null, /* 人員在職狀態 */
  primary key (code)
)
go
/*        人員區分            */
/*    ===================     */
/*      A -> 教師             */
/*      B -> 研究人員         */
/*      C -> 職員             */
/*      D -> 助教             */
/*      E -> 稀少性科技人員   */
/*      F -> 教官             */
/*      G -> 駐衛警           */
/*      H -> 技工             */
/*      I -> 工友             */
/*      J -> 約聘教師         */
/*      K -> 約僱人員         */
/*      L -> 臨時人員         */
/*      M -> 計畫助理         */
/*      N -> 工讀生           */
/*      O -> 職務代理人       */
/*      P -> 兼任教師         */
/*      Q -> 專案計畫助理     */
/*      R -> 海外聯招助理     */
/*      S -> 校管理費進用人員 */

/*  A-E 為正式編制教職員      */
/*  G-I 為正式編制技工、工友  */
create table staffcode ( /* 人員區分代碼檔 */
  code            char(1)  not null,    /* 人員區分代碼 */
  description     varchar(20) not null, /* 人員區分 */
  primary key (code)
)
go
create table dailyusage /* 每日使用統計資料 */
(
    logday char(10) not null, /* 日期 */
    usage decimal(7,0) not null, /* 使用量 */
    primary key(logday)
)
go
create table college /* 學院資料 */
(
  colid char(1) not null, /* 學院代碼 */
  name varchar(10) not null, /* 學院名稱 */
  ename varchar(40) null, /* 學院英文名稱 */
  edu_colid char(4) null, /* 教育部學院代碼 */
  primary key(colid)
)
go
create table department /* 系所資料 */
(
  deptid varchar(3) not null, /* 系所代碼 */
  colid char(1) not null, /* 所屬學院代碼 */
  degree varchar(30) not null, /* 學士學位名稱 */
  gdegree varchar(30) not null, /* 碩士學位名稱 */
  cname varchar(50) not null, /* 系所中文名 */
  ename varchar(90) not null, /* 系所英文名 */
  sname varchar(20) not null, /* 中文簡稱 */
  mincredit numeric(3,0) not null, /* 大學部最低畢業學分 */
  gmincredit numeric(2,0) not null, /* 研究所最低畢業學分 */
  pmincredit numeric(2,0) not null, /* 博士班最低畢業學分 */
  dmincredit numeric(2,0) not null, /* 直攻生最低畢業學分 */
  note ntext not null, /* 選課注意事項 */
  uid char(4) null,     /* 內部單位代碼 */
  edegree varchar(50) null,  /* 學士學位英文名稱 */
  egdegree varchar(50) null, /* 碩士學位英文名稱 */
  abbredegree varchar(8) null,  /* 學士學位英文縮寫名稱 */
  abbregdegree varchar(8) null, /* 博碩士學位英文縮寫名稱 */
  pdegree varchar(30) null, /* 博士學位名稱 */
  epdegree varchar(60) null, /* 博士學位英文名稱 */
  abbrepdegree varchar(8) null, /* 博士學位英文縮寫名稱 */
  tuition numeric(6,0) not null default 0, /* 學費 */
  incidental numeric(6,0) not null default 0, /* 雜費 */
  basic numeric(6,0) not null default 0, /* 學雜費基數 */
  bcreditfee numeric(6,0) not null default 0, /* 學士學分費 */
  gcreditfee numeric(6,0) not null default 0, /* 碩博士學分費 */
  fortuition numeric(6,0) not null default 0, /* 外國學生學士學費 */
  forincidental numeric(6,0) not null default 0, /* 外國學生學士雜費 */
  forcreditfee numeric(6,0) not null default 0, /* 外國學生學士學分費 */
  forgbasic numeric(6,0) not null default 0, /* 外國學生碩士學雜費基數 */
  forgcreditfee numeric(6,0) not null defulat 0, /*外國學生碩士學分費 */
  forpbasic numeric(6,0) not null default 0, /* 外國學生博士學雜費基數 */
  forpcreditfee numeric(6,0) not null defulat 0, /*外國學生博士學分費 */
  fwave1 numeric(6,0) not null default 0, /* 撫卹期滿減免學費 */
  fwave2 numeric(6,0) not null default 0, /* 撫卹期滿減免雜費 */
  hwave1 numeric(6,0) not null default 0, /* 原住民減免學費 */
  hwave2 numeric(6,0) not null default 0, /* 原住民減免雜費 */
  edu_deptid char(6)  null,               /* 教育部系所代碼 */
  sort_order int null,
  edutarget ntext null, /* 學士班教育目標 */
  coursemap image null, /* 學士班課程地圖 */
  careermap image null, /* 學士班職涯進路圖 */
  gedutarget ntext null, /* 碩士班教育目標 */
  gcoursemap image null, /* 碩士班課程地圖 */
  gcareermap image null, /* 碩士班職涯進路圖 */
  pedutarget ntext null, /* 博士班教育目標 */
  pcoursemap image null, /* 博士班課程地圖 */
  pcareermap image null, /* 博士班職涯進路圖 */
  primary key (deptid),
  foreign key(colid) references college,
)
go
create index department_colid on department(colid,deptid)
go
create table staff /* 員工基本資料 */
(
  id               varchar(10) not null,       /* 身分證字號或護照號碼 */
  name             nvarchar(12) not null,      /* 姓名 */
  ename            varchar(30) null,           /* 英文姓名 */
  sex              char(1) not null,           /* 性別:  M: 男 F: 女 */
  birthday         varchar(7) null,            /* 生日 */
  education        char(2) null,               /* 最高學歷教育程度代碼 (用公務人員代碼) */
  educationstatus  char(1) null,               /* 最高學歷修業狀況代碼 (修業狀況: 1:畢業 2:結業 3:肄業 0:其他) */
  account          char(14) null,              /* 郵局帳號 */
  addr1            varchar(80) null,           /* 戶籍地址 */
  addr2            varchar(80) null,           /* 通訊地址 */
  phone1           varchar(24) null,           /* (公)電話 */
  phone2           varchar(24) null,           /* (宅)電話 */
  mphone           varchar(12) null,           /* 行動電話 */
  email            varchar(40) null,           /* email */
  homePage         varchar(60) null,           /* www HomePage */
  workstatus       char(1) not null default 'A', /* 在職狀態 */
  stafftype        char(1) not null default 'A', /* 人員區分代碼 */
  title            varchar(12) not null,       /* 職稱 */
  etitle           varchar(50) not null,       /* 英文職稱 */
  parttitle        varchar(26) null,           /* 主要兼職職稱 */
  hiredate         varchar(7) not null,        /* 任現職到職日期 */
  salaryrank       char(3) null,               /* 現職支薪官職等 (用公務人員代碼) */
  salaryclass      char(3) null,               /* 現職支薪俸級(階) (用公務人員代碼) */
  salarypoint      numeric(4,0) null,          /* 支薪俸點 */
  leavedate        varchar(7)  null,           /* 退離職日期 */
  password         varchar(20) null,           /* 密碼 */
  lastupdatedate   char(7) null,                /* 資料最後異動日期 */
  photo            image null, /* 照片 */
  staffid          int null, /* 員工編號 */
  ecard_uid char(10) null, /* -- 悠遊卡內部卡號 */
  ecard_no char(10) null, /* -- 悠遊卡外部卡號 */
  encpass          char(128) null, /* sha512 */
  staffid2   char(5) null, /* 員工編號:字串 */
  primary key (id)
)
create index staff_name on staff(name)
create unique index staff_staffid2 on staff(staffid2)
go
create table student /* 學生學籍資料 */
(
  studentid varchar(10) not null, /* 學號 */
  deptid varchar(3) not null, /* 所屬系所代碼 */
  name nvarchar(20) not null, /* 姓名 */
  birthday varchar(7) null, /* 生日 */
  sex char(1) not null, /* 性別 */
  grade char(1) not null default '1', /* 年級 */
  type varchar(30) not null default '一般生', /* 身分別 */
  status char(1) not null default '0', /* 學生狀態,0在學,1休學,2直攻博士,3退學,4肄業,5畢業,6交換學生,7已離校交換生 */
  leavedate int null, /* 離校日期 */
  email varchar(40) null, /* 電子郵件信箱 */
  id varchar(10) null, /* 身分證字號 */
  phone1 varchar(24) null, /* 戶籍地聯絡電話 */
  citizen varchar(12) null default 'ROC', /* 國籍 */
  addr1 varchar(100) null, /* 戶籍地址 */
  addr2 varchar(100) null, /* 通訊地址 */
  thesis varchar(255) null, /* 論文題目 */
  tscore numeric(5,2) null default -1, /* 學位考試成績 */
  diplomaid char(24) null, /* 離校證書號碼 */
  ediplomaid char(10) null, /* 英文學位證書序號 */
  entrydoc varchar(40) null, /* 入學文號 */
  entrydiploma varchar(90) null, /* 入學學歷 */
  password varchar(20) null, /* 密碼 */
  entrydate int null, /* 入學年月 */
  ograduate char(1) not null default '1', /* 原學校畢肄業,1畢,2肆 */
  oentrydoc varchar(40) null, /* 原學校入學資格核准年月文號 */
  ograde char(1) null, /* 原學校肄業年級 */
  ograduatedoc varchar(40) null, /* 原學校畢業證書號碼 */
  equaldoc varchar(40) null, /* 比敘大專同等學力年月文號 */
  pracscore numeric(5,1) null default -1, /* 實習成績 */
  leavereason varchar(30) null, /* 離校原因 */
  deptgroup varchar(20) null, /* 系所組別 */
  zipcode1 varchar(5) null, /* 戶籍地郵遞區號 */
  pname nvarchar(20) null, /* 監護人姓名 */
  account char(14) null, /* 郵局帳號 */
  age numeric(3,0) null, /* 年齡 */
  alive char(1) null default 'Y', /* 存歿 */
  average numeric(5,2) null default 0, /* 學業平均成績 */
  military varchar(6) null default 'N', /* 兵役別 */
  cardserial numeric(1,0) null default 0, /* 學生證遺失序號 */
  phone2 varchar(24) null, /* 通訊地址聯絡電話 */
  zipcode2 varchar(5) null, /* 通訊地郵遞區號 */
  class char(1) not null default 'B', /* 部別, B學士班,G碩士班,P博士班 */
  ename varchar(40) null, /* 英文名 */
  ethesis varchar(255) null, /* 英文論文題目 */
  class_no varchar(2) null default 0, /* 班別 */
  career varchar(255) null default '求職中:', /* 公司(學校)及職稱 */
  note varchar(255) null, /* 備註 */
  remittype char(1) null, /* 減免類別 */
  conscriptdate varchar(7) not null default '', /* 核准儘後召集日期 */
  conscriptnum varchar(30) not null default '', /* 核准儘後召集字號 */
  cconsdate varchar(7) not null default '', /* 消滅儘後召集日期 */
  cconscript varchar(30) not null default '', /* 消滅儘後召集字號 */
  postponedate varchar(7) not null default '', /* 核准緩徵日期 */
  postponenum varchar(30) not null default '', /* 核准緩徵字號 */
  cpostdate varchar(7) not null default '', /* 消滅緩徵日期 */
  cpostpone varchar(30) not null default '', /* 消滅緩徵字號 */
  studentfrom varchar(20) not null default '', /* 學生籍貫(出生地) */
  militaryrank varchar(10) not null default '', /* 軍種階級 */
  delayreason varchar(20) not null default '', /* 延畢原因 */
  phone3 varchar(24) not null default '', /* 行動電話號碼 */
  upboundary decimal(3,0) not null default 40, /* 工讀時數上限 */
  advisor varchar(10) null, /* 指導教授 */
  militarydept varchar(10) not null default '', /* 團管部 */
  internaltype varchar(10) not null default '', /* 校內身分別 */
  accountid varchar(10) null, /* 郵局戶名 */
  reconscriptdate varchar(7) not null default '', /* 核准儘後召集延長日期 */
  reconscriptnum varchar(30) not null default '', /* 核准儘後召集延長字號 */
  repostponedate varchar(7) not null default '', /* 核准緩徵延長日期 */
  repostponenum varchar(30) not null default '', /* 核准緩徵延長字號 */
  applyleavedate char(7) not null default '', /* 辦理離校日期 */
  picture image null, /* 入學照片 */
  rank varchar(7) null, /* 全班排名 */
  deptrank varchar(7) null, /* 全系排名 */
  jobstatus char(1) null default 'E', /* 現況, A碩士班,B博士班,C就業,D服役,E待業,F退休 */
  lessoraddress varchar(100) null, /* 租屋地址 */
  lessor nvarchar(10) null, /* 房東姓名 */
  lessorphone varchar(24) null, /* 房東電話 */
  lessorhome varchar(100) null, /* 房東地址 */
  contact nvarchar(30) null, /* 緊急聯絡人及電話 */
  tutor varchar(10) null, /* 導師id */
  modifydate varchar(8) null, /* 聯絡資訊修改日期 */
  poorhonest char(1) not null default 'N', /* 清寒學生 */
  lastdegree varchar(36) null, /* 最高學歷 */
  yearincome decimal(4) not null default 0, /* 年收入 */
  deptcname varchar(50) null, /* 系中文名 */
  deptename varchar(70) null, /* 系英文名 */
  colcname varchar(10) null, /* 院中文名 */
  colename varchar(40) null, /* 院英文名 */
  taappsem varchar(4) null, /* 通過TA認證學期 */
  ecard_uid char(10) null, /* -- 悠遊卡內部卡號 */
  ecard_no char(10) null, /* -- 悠遊卡外部卡號 */
  autobiography ntext null, /* 自傳 */
  encpass  char(128) null, /* sha512 */
  primary key (studentid),
  foreign key(deptid) references department,
  foreign key(advisor) references staff,
  foreign key(tutor) references staff
)
create index student_name on student(name)
create index student_division on student(studentid,class)
go
create table unit ( /* 單位資料 */
  layer            char(1) not null,     /* 層級 */
  uid              char(4) not null,     /* 內部單位代碼 */
  belong           char(4) null,         /* 隸屬單位 */
  attrib           char(1) null,         /* 單位屬性 */
  sort_order       int null, /* 排序 */
  ufullname        varchar(80) not null, /* 單位全名 */
  ufullname2        varchar(80) not null, /* 單位全名2 */
  uabbrname        varchar(40) not null, /* 單位簡稱 */
  efullname        varchar(100) not null, /* 英文單位全名 */
  eabbrname        varchar(100) not null, /* 英文單位簡稱 */
  extphone         varchar(12) null,     /* 專線電話號碼 */
  intphone         varchar(6) null,      /* 內線電話號碼(分機) */
  fax              varchar(12) null,     /* 傳真號碼 */
  email            varchar(30) null,     /* 電子郵件 */
  manager          char(7) null,         /* 主管職位代碼 */
  lastupdatedate   char(7) null,         /* 資料最後異動日期 */
  active           char(1) not null default 'Y', /* 現有單位 */
  www              varchar(100) null, /* 單位網址 */
  edu_deptid       char(6) null, /* 教育部代碼 */
  prirequire       varchar(5) null,      /* 業務權限 */
  joomla_url       varchar(200) null,
  sort_order        int null, /* 排序 */
  primary key (uid),
  foreign key(belong) references unit,
)
go
create table position ( /* 職位資料 */
  pid              char(7) not null,      /* 職缺代號 */
  officetype       char(1) not null default '1',  /* 專、兼任: 1:專任, 2:兼任 */
  uid              char(4) not null,      /* 所屬部門代碼 */
  sort_order       int null, /* 排序 */
  stafftype        char(1) not null,      /* 人員區分代碼 */
  title            varchar(20) not null,  /* 職稱 */
  etitle           varchar(50) not null,  /* 英文職稱 */
  id               varchar(10) null,      /* 現職人員身份證字號 */
  hiredate         varchar(7) null,       /* 現職人員到職日期 */
  phone            varchar(19) null,      /* (公)電話號碼 */
  actstatus char(1) not null default '0', /* 代理狀態,0有效,1無效 */
  lastupdatedate   char(7) null,                /* 資料最後異動日期 */
  deduct           decimal(1,0) not null default 0, /* 扣抵鐘點數 */
  jobs             varchar(1000) null, /* 業務執掌 */
  primary key(pid),
  foreign key(uid) references unit,
  foreign key(id) references staff
)
create index position_id on position(id)
go
create table course /* 課程基本資料 */
(
  courseid varchar(8) not null, /* 課號 */
  cname varchar(50) not null, /* 中文名稱 */
  ename varchar(100) null, /* 英文名稱 */
  grade varchar(4) not null, /* 修習年級 */
  credit numeric(3,1) not null default 0, /* 學分數 */
  practice char(1) not null default '0', /* 非講授課程 */
  division char(1) not null default 'B', /* 最高承認部別 */
  hours numeric(3,1) not null default 0, /* 鐘點數 */
  repeat char(1) not null default 'N', /* 可否重覆修 */
  sname varchar(20) null, /* 課程簡稱 */
  chargedept varchar(3) null, /* 負責系所 */
  coursesyllabus ntext null, /* 課程規範 */
  ability varchar(30) null, /* 核心能力 */
  career varchar(30) null, /* 職涯類別 */
  primary key (courseid),
  foreign key(chargedept) references department
)
create index course_grade on course(courseid,grade)
go
create table precourse /* 先修學分要求 */
(
  courseid varchar(8) not null, /* 課號 */
  precourseid varchar(8) not null, /* 先修課號 */
  start numeric(3,0) not null, /* 啟用年份 */
  stop numeric(3,0) not null default 999, /* 失效年份 */
  primary key (courseid,precourseid),
  foreign key (courseid) references course,
  foreign key (precourseid) references course
)
create index precourse_pre on precourse(precourseid)
go
create table schoolrequire /* 校定必修及核心課程 */
(
  courseid varchar(8) not null, /* 課號 */
  start numeric(3,0) not null, /* 啟用年份 */
  stop numeric(3,0) not null default 999, /* 失效年份 */
  coretype char(1) not null default '1', /* 核心類別 */
  primary key (courseid,start,stop),
  foreign key (courseid) references course
)
go
create table require /* 必修學分 */
(
  courseid varchar(8) not null, /* 課號 */
  deptid varchar(3) not null, /* 要求必修系所代碼 */
  start numeric(3,0) not null, /* 啟用年份 */
  stop numeric(3,0) not null default 999, /* 失效年份 */
  class char(1) not null default 'B', /* 學碩博 */
  primary key (courseid,deptid,start,stop,class),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index require_id on require(courseid)
create index require_deptid on require(deptid)
go
create table assist /* 輔系必修學分 */
(
  courseid varchar(8) not null, /* 課號 */
  deptid varchar(3) not null, /* 輔系系所代碼 */
  start numeric(3,0) not null, /* 啟用年份 */
  stop numeric(3,0) not null default 999, /* 失效年份 */
  primary key (courseid,deptid,start,stop),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index assist_id on assist(courseid)
create index assist_deptid on assist(deptid)
go
create table dmajor /* 雙主修必修學分 */
(
  courseid varchar(8) not null, /* 課號 */
  deptid varchar(3) not null, /* 雙主修系所代碼 */
  start numeric(3,0) not null, /* 啟用年份 */
  stop numeric(3,0) not null default 999, /* 失效年份 */
  primary key (courseid,deptid,start,stop),
  foreign key (courseid) references course,
  foreign key (deptid) references department
)
create index dmajor_id on dmajor(courseid)
create index dmajor_deptid on dmajor(deptid)
go
create table classroom /* 教室資料 */
(
  classroomid varchar(8) not null, /* 教室代碼 */
  capacity numeric(3,0) not null, /* 容量 */
  equipment varchar(30) null, /* 設備 */
  deptid varchar(3) null, /* 優先分配系所 */
  managementunit char(4) null, /* 管理單位 */
  powerconsumption int null default 0, /* 電力消耗 */
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
insert roomtypecode(code,description) values ('A', '教室')
insert roomtypecode(code,description) values ('B', '會議室')
insert roomtypecode(code,description) values ('C', '表演廳')
insert roomtypecode(code,description) values ('D', '運動設施')
insert roomtypecode(code,description) values ('E', '自修室')
insert roomtypecode(code,description) values ('F', '實驗室')
insert roomtypecode(code,description) values ('G', '辦公室')
insert roomtypecode(code,description) values ('H', '教師研究室')
insert roomtypecode(code,description) values ('I', '學生研究室')
insert roomtypecode(code,description) values ('J', '廁所')
insert roomtypecode(code,description) values ('K', '茶水間')
insert roomtypecode(code,description) values ('L', '儲藏室')
go
create table room /* 空間資料 */
(
    roomid varchar(8) not null, /* 空間代碼 */
    roomtype char(1) not null default 'A', /* 類別 */
    capacity numeric(3,0) not null, /* 容納人數 */
    equipment varchar(40) null, /* 設備 */
    managementunit char(4) null, /* 管理單位 */
    area float null, /* 面積 */
    powerconsumption int null default 0, /* 電力消耗 */
    memo nvarchar(40) null, /* 附注 */
    fee int null default 0,
    primary key (classroomid),
    foreign key(management) references unit
)
go

create table conduct /* 操行與學期成績 */
(
  studentid varchar(10) not null, /* 學號 */
  year int not null, /* 學年期 */
  score numeric(4,1) not null default -1, /* 操行成績 */
  average numeric(6,2) null, /* 學期平均成績 */
  rank varchar(7) null, /* 學期排名 */
  deptid varchar(3) null, /* 當學期所屬系所 */
  grade char(1) null, /* 當學期之年級 */
  failpass numeric(3,1) null, /* 當學期未過學分數 */
  credit numeric(3,1) null, /* 當學期總學分數 */
  primary key (studentid,year),
  foreign key(studentid) references student,
  foreign key(deptid) references department
)
create index conduct_sid on conduct(studentid)
go
create table coremin /* 核心課程最低學分數 */
(
  coretype char(1) not null, /* 核心類別 */
  mincredit numeric(2,0) not null, /* 最低學分數 */
  start numeric(3,0) not null, /* 啟用年 */
  stop numeric(3,0) not null, /* 失效年 */
  primary key (coretype,start,stop)
)
go
create table opened /* 開設課程資料 */
(
  courseid varchar(8) not null, /* 課號 */
  year int not null, /* 學年期 */
  class varchar(6) not null default '0', /* 班別,若不為0,系統會認為此課程有兩班以上 */
  requirement char(1) default '0', /* 設備需求 */
  time varchar(8) null, /* 上課時間 */
  place varchar(32) null, /* 上課地點, 同時段地點以+連結 */
  evaluation char(1) null default '1', /* 是否評鑑 */
  hours numeric(3,1) not null default 0, /* 授課時數,0表示同學分數,非0表鐘點費,當學分數為0時也會影響學分費計算 */
  syllabus ntext null, /* 學期大綱 */
  limit numeric(3,0) not null default 0, /* 人數上限, 0不限制 */
  note varchar(50) null, /* 註記 */
  teachers nvarchar(42) null, /* 授課老師, query cache */
  credit numeric(3,1) not null default -1, /* 學分數,只有當規則為"允許同一門課各學期可有不同學分數"時才使用 */
  floor numeric(2,0) not null default 0, /* 退選人數限制, 0表示不限制 */
  deptid varchar(3) null, /* 開課教師系所 */
  senddate varchar(8) null, /* 成績致送日期 */
  limitdeptid varchar(30) null, /* 可修系所,以','分開系所代碼,!開頭表示負面表列 */
  plimit varchar(20) null, /* 各系限修人數, deptid(1):limit(1),deptid(2):limit(2),!limit(3), "!" 表示其他系所 */
  limitgrade varchar(30), /* 各系限修人數, deptid(1):grade(1),deptid(2):grade(2) */
  sydate varchar(8) null, /* 初次課綱致送日 */
  inenglish char(1) not null default 'N', /* 全英語授課 */
  tafee int default 0, /* 助教總月薪 */,
  evaltype varchar(6) null, /* 適用評鑑類別,0自評類,1一般類,2體育類,3全英語類,4公益服務類,5助教類 */
  tescore decimal(3,2) null default 0, /* 教學評鑑的分數 */
  tereferenceonly char(1) null default 'N', /* 評鑑只供參考 */
  colscore decimal(3,2) null default 0, /* 全院平均分數 */
  schoolscore decimal(3,2) null default 0, /* 全校平均分數 */
  primary key (courseid,year,class),
  foreign key(courseid) references course,
  foreign key(deptid) references department
)
create index opened_year on opened(year)
go
create table outcredit /* 校際選課資料 */
(
  studentid varchar(10) not null, /* 學號 */
  credit numeric(4,1) null,     /* 學分數 */
  school varchar(30) not null, /* 修習學校 */
  year int not null, /* 修習學年期 */
  score numeric(4,1) not null default -1, /* 成績 */
  cname varchar(40) not null,     /* 中文課名 */
  ename varchar(80) null,     /* 英文課名 */
  division char(1) not null default 'B', /* 所屬部別 */
  primary key(studentid,year,cname),
  foreign key(studentid) references student
)
create index student_id ON outcredit(studentid)
go
create table rest /* 休學資料 */
(
  studentid varchar(10) not null, /* 學號 */
  year int not null, /* 開始休學學年期 */
  period numeric(1,0) not null, /* 修學期間(學期) */
  restdoc varchar(20) null, /* 休學文號 */
  reason char(1) null, /* 休學因素 */
  note varchar(30) null, /* 備註 */
  backyear varchar(4) null, /* 應復學學年期 */
  primary key (studentid,year),
  foreign key (studentid) references student
)
go
create table selected /* 選課資料 */
(
  courseid varchar(8) not null, /* 課號 */
  year int not null, /* 學年期 */
  class varchar(6) not null default '0', /* 班別 */
  studentid varchar(10) not null, /* 學號 */
  score numeric(4,1) not null default -1, /* 成績,-1全班未到,-2個人成績未到,-3請假,-4缺考,-5停修 */
  mandatory char(1) not null default 'N', /* 是否必選 */
  netscore char(1) not null default 'N', /* 是否網路送成績 */
  tereject char(1) not null default 'N', /* 不列入教學意見 */
  primary key (studentid,courseid,year),
  foreign key (courseid,year,class) references opened,
  foreign key (studentid) references student
)
create index selected_who on selected(courseid,year,class,studentid,score,tereject)
go
create table teaching /* 授課資料 */
(
  courseid varchar(8) not null, /* 課號 */
  year int not null, /* 學年期 */
  class varchar(6) not null default '0', /* 班別 */
  teacherid varchar(10) not null, /* 教師身分證字號 */
  primary key (teacherid,courseid,year,class),
  foreign key(courseid,year,class) references opened,
  foreign key(teacherid) references staff
)
go
create table ta /* TA資料 */
(
  courseid varchar(8) not null, /* 課號 */
  year int not null, /* 學年期 */
  class varchar(6) not null default '0', /* 班別 */
  studentid varchar(10) not null, /* TA學號 */
  salary int default 0, /* 月薪 */
  primary key (studentid,courseid,year,class),
  foreign key(courseid,year,class) references opened,
  foreign key(studentid) references student
)
go
create table exempt /* 抵免學分資料 */
(
  studentid varchar(10) not null, /* 學號 */
  courseid varchar(8) not null, /* 課號 */
  year int null, /* 申請學期 */
  type char(1) not null default '0', /* 內或外抵,0內,1外 */
  internalcid varchar(8) null, /* 內抵課號,用於判別是否為本系選修抵本系必修 */
  note varchar(128) null, /* 備註 */
  primary key (studentid,courseid),
  foreign key(studentid) references student,
  foreign key(courseid) references course,
  foreign key(internalcid) references course
)
create index exempt_sid on exempt(studentid)
create index exempt_cid on exempt(courseid)
go
create table transfer /* 轉系資料 */
(
  studentid varchar(10) not null, /* 學號 */
  year int not null, /* 轉系學年期 */
  fromdep varchar(3) not null, /* 原系所 */
  todep varchar(3) not null, /* 轉至系所 */
  beforegrade char(1) not null, /* 轉系前年級 */
  aftergrade char(1) not null, /* 轉系後年級 */
  note varchar(100) null, /* 附註 */
  beforeclass varchar(2) not null default '0', /* 轉系前班別 */
  primary key (studentid,year),
  foreign key(studentid) references student
)
go
create table whoassist /* 輔系學生 */
(
  studentid varchar(10) not null, /* 學號 */
  deptid varchar(3) not null, /* 系所代碼 */
  year int null, /* 申請學期 */
  note varchar(100) null, /* 附註 */
  deptcname varchar(50) null, /* 系中文名 */
  deptename varchar(70) null, /* 系英文名 */
  primary key (studentid,deptid),
  foreign key (studentid) references student,
  foreign key (deptid) references department
)
go
create table whodouble /* 雙主修學生 */
(
  studentid varchar(10) not null, /* 學號 */
  deptid varchar(3) not null, /* 系所代碼 */
  year int null, /* 申請學期 */
  note varchar(100) null, /* 附註 */
  deptcname varchar(50) null, /* 系中文名 */
  deptename varchar(70) null, /* 系英文名 */
  colcname varchar(10) null, /* 院中文名 */
  colename varchar(40) null, /* 院英文名 */
  degreecname varchar(30) null, /* 學位中文名 */
  degreeename varchar(50) null, /* 學位英文名 */
  primary key (studentid,deptid),
  foreign key(studentid) references student,
  foreign key(deptid) references department
)
go
create table teachevaluation   /* 教學評鑑資料 */
(
    teid char(5)            NOT NULL, /* 教學評鑑代碼 year(3) + sn(2)  */
    year int         NOT NULL, /* 學年期 */
    startday varchar(8) null, /* 開始日期 */
    endday varchar(8) null, /* 結束日期 */
    description nTEXT NOT NULL,     /* 評鑑說明 */
    comment nTEXT NOT NULL,     /* 備註 */
    questions tinyint not null default 0,     /* 題數 */
    isformal char(1) null default 'Y', /* 正式評鑑 */
    primary key (teid)
)
go

create table tequestion /* 教學評鑑題目資料 */
(
  teid               char(5)            NOT NULL, /* 教學評鑑代碼 year(3) + sn(2)  */
  qno                tinyint            NOT NULL, /* 題號 */
  question           varchar(255)       NOT NULL, /* 題目 */
  items              tinyint                    , /* 選答數 */
  coursetype         char(1) null, /* 限用課程 */
  needcount          char(1) not null default 'Y', /* 列入總分計算 */
  bavg decimal(3,2) not null default 0, /* 全校大學部平均 */
  gavg decimal(3,2) not null default 0, /* 全校研究所平均 */
  bstdev float not null default 0, /* 全校大學部標準差 */
  gstdev float not null default 0, /* 全校大學部標準差 */
  primary key (teid, qno),
  foreign key(teid) references teachevaluation
)
go

create table tequestionitem /* 教學評鑑題目選答資料 */
(
  teid               char(5)            NOT NULL, /* 教學評鑑代碼 year(3) + sn(2)  */
  qno                tinyint            NOT NULL, /* 題號 */
  itemno             tinyint            NOT NULL, /* 選答序號 */
  itemdescribe       varchar(255)       null    , /* 選答說明 */
  PRIMARY KEY (teid, qno, itemno),
  foreign key(teid,qno) references tequestion
)
go

create table teanswer /* 教學評鑑學生作答資料 */
(
  teid               char(5)            NOT NULL,    /* 教學評鑑代碼 year(3) + sn(2)  */
  courseid           varchar(8)         NOT NULL,    /* 課號 */
  class              varchar(6)         NOT NULL, /* 班別 */
  answer             varchar( 50 )      null,    /* 選擇題答案 */
  comment            nvarchar(1200)     null,     /* 建議題答案 */
  id                 int not null identity(1,1),         /* 序號 */
  studentid          varchar(10) null,           /* 學號 */ /*************************************************************************/
  atime              datetime null default getdate(), /* 填答時間 */
  primary key(id),
  foreign key(courseid) references course,
  foreign key(teid) references teachevaluation,
  foreign key(studentid) references student
)
CREATE INDEX teanswer_all on teanswer(teid,courseid,class,studentid)
CREATE INDEX teanswer_stu on teanswer(studentid,teid,courseid,class)
CREATE INDEX teanswer_teid on teanswer(teid,answer)
go
create table school ( /* 學歷資料 */
  id               varchar(10) not null,          /* 身份證字號 */
  schoolname       varchar(40) not null,          /* 學校名稱 */
  deptname         varchar(24),                   /* 系所名稱 */
  beginDate        varchar(5) not null,           /* 開始修業年月 */
  endDate          varchar(5) null,               /* 終止修業年月 */
  status           char(1) not null default '1',  /* 修業狀況, 1:畢業 2:結業 3:肆業 0:其他 */
  degree           char(2) not null default '50', /* 教育程度 */
  diploma          varchar(36) null,              /* 證件字號 */
  lastupdatedate   char(7) null,                  /* 資料異動日期 */
  primary key (id,beginDate,schoolname,deptname,degree ),
  foreign key(id) references staff
)
go
create table experience ( /* 主要經歷資料 */
  id               varchar(10) not null,  /* 身份證字號 */
  organization     varchar(40) not null,  /* 服務機關 */
  title            varchar(20) not null,  /* 職稱 */
  holdday          varchar(7) not null,   /* 任職生效日期 */
  removeday        varchar(7) null,       /* 離職生效日期 */
  holddoc          varchar(36) null,      /* 任職字號 */
  removedoc        varchar(36) null,      /* 免職字號 */
  lastupdatedate   char(7) null,          /* 資料異動日期 */
  primary key(id,holdday),
  foreign key(id) references staff
)
go
create table publication(                 /* 著作資料 */
  id varchar(10) not null,                /* 身份證字號 */
  type char(1) not null default 'A',      /* 分類代碼 */
  title varchar(250) not null,            /* 標題 */
  author varchar(250) not null,           /* 作者 */
  place varchar(300) not null,            /* 出處 */
  date varchar(6) not null,               /* 西元出版年月 */
  lastupdatedate char(7) null,            /* 資料異動日期 */
  ci varchar(20) null, /* 期刊群 */
  pid varchar(60) null, /* 計劃編號 */
  primary key(id,title,place,date),
  foreign key(id) references staff
)
create index publication_id on publication(id,type)
create index publication_id2 on publication(id)
go

create table studentfee( /* 學生繳費記錄 */
    year int not null, /* 繳費學期 */
    studentid varchar(10) not null, /* 學號 */
    dormfee numeric(6,0) not null default 0, /* 宿舍費用 */
    tuition numeric(6,0) not null default 0, /* 學費 */
    incidental numeric(6,0) not null default 0, /* 雜費 */
    basic numeric(6,0) not null default 0, /* 學雜費基數 */
    insurance numeric(5,0) not null default 0, /* 平安保險費 */
    overseas numeric(5,0) not null default 0, /* 僑保費 */
    ddfee numeric(5,0) not null default 0, /* 住宿保證金 */
    creditfee numeric(6,0) not null default 0, /* 學分費 */
    langfee numeric(5,0) not null default 0, /* 語言實習費 */
    compfee numeric(5,0) not null default 0, /* 電腦實習費 */
    loan numeric(6,0) not null default 0, /* 助學貸款 */
    paid char(1) not null default 'Y', /* 是否有繳學雜費 */
    creditpaid char(1) not null default 'Y', /* 是否有繳學分費 */
    note varchar(60) null, /* 附註 */
    delay char(1) not null default 'N', /* 是否要補繳學雜費 */
    creditloan numeric(6,0) null default 0, /* 學分費助學貸款 */
    cleanfee numeric(5,0) null default 0, /* 宿舍清潔費 */
    gym numeric(5,0) null default 0, /* 運動設施使用費 */
    primary key(year,studentid),
    foreign key(studentid) references student
)
create index studentfee_sid on studentfee(studentid)
go
create table studentrefund( /* 學生退費事項 */
    year int not null, /* 退費學年期 */
    studentid varchar(10) not null, /* 學號 */
    amount numeric(6,0) not null default 0, /* 退費金額 */
    refundday varchar(7), /* 退費日期 */
    note varchar(60) null, /* 附註 */
    primary key(studentid,refundday),
    foreign key(studentid) references student
)
go
create table dormroom /* 寢室資料表 */
(
    roomid varchar(10) not null, /* 寢室編號 */
    capacity decimal(1,0) not null default 4, /* 人數 */
    sex char(1) not null default 'M', /* 性別 */
    type char(1) not null default 'B', /* 類別 */
    phone varchar(10) null, /* 電話 */
    roomfee numeric(6,0) null default 0, /* 住宿費 */
    cleanfee number(5,0) null default 0, /* 清潔費 */
    primary key(roomid)
)
go
create table applydorm ( /* 申請宿舍 */
    year int not null, /* 住宿學年 */
    studentid varchar(10) not null, /* 學號 */
    priority decimal(6,0) not null default 0, /* 優先順序 */
    accept char(1) not null default 'N', /* 可住宿 */
    deposit char(1) not null default 'N', /* 要交保證金 */
    dormnum varchar(10) null, /* 寢室號碼 */
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
create table qualifycode ( /* 資格考試種類 */
    code char(2) not null, /* 代碼 */
    description varchar(16) not null, /* 名稱 */
    primary key(code)
)
go
create table qualifyrule ( /* 資格考試適用對象 */
    code char(2) not null, /* 種類代碼 */
    deptid varchar(3) not null, /* 適用系所 */
    class char(1) not null default 'B', /* 適用班別 */
    start numeric(3,0) not null, /* 開始入學年 */
    stop numeric(3,0) not null, /* 終止入學年 */
    primary key(code, deptid, class, start, stop),
    foreign key(code) references qualifycode,
    foreign key(deptid) references department,
    foreign key(class) references divicode
)
go
create table qualifycourse ( /* 資格考未過應補課程 */
    code char(2) not null, /* 種類代碼 */
    courseid varchar(8) not null, /* 課號 */
    examfirst char(1) null default 'Y', /* 先考才能補 */
    primary key(courseid), /* 基於效率考量, 不得有兩個以上資格考要求同一門課 */
    foreign key(code) references qualifycode,
    foreign key(courseid) references course
)
go
create table qualify ( /* 資格考試 */
    studentid varchar(10) not null, /* 學號 */
    code char(2) not null, /* 資格考代碼 */
    year int not null, /* 測驗學年期 */
    subject varchar(50) not null, /* 考試名稱分數 */
    passed char(1) not null default 'Y', /* 是否通過 */
    examdate int not null default 0, /* 考試日期 */
    primary key(studentid,year,subject),
    foreign key(studentid) references student,
    foreign key(code) references qualifycode
)
go
create table highschoolcode ( /* 高中代碼對照表 */
    code varchar(4) not null, /* 高中代碼 */
    name varchar(40) not null, /* 高中校名 */
    primary key (code)
)
go
create table recdeptcode ( /* 推甄系代碼表 */
    deptid varchar(4) not null, /* 校內系代碼 */
    name varchar(60) not null, /* 系名 */
    code varchar(4) not null, /* 大考中心系代碼 */
    cid char(1) not null, /* 校內院代碼 */
    start decimal(3,0) not null default 1, /* 起編號碼 */
    primary key(code)
)
go
create table uniondeptcode ( /* 聯招系代碼表 */
    deptid varchar(4) not null, /* 校內系代碼 */
    name varchar(60) not null, /* 系名 */
    code varchar(4) not null, /* 聯招系代碼 */
    cid char(1) not null, /* 校內院代碼 */
    start decimal(3,0) not null default 1, /* 起編號碼 */
    primary key(code)
)
go
create table merit ( /* 獎懲記錄 */
    year int not null, /* 學年期 */
    studentid varchar(10) not null, /* 學號 */
    citedate varchar(8) not null, /* 記錄日期 */
    amount decimal(1,0) not null default 1, /* 數量 */
    type char(1) not null, /* 種類 */
    note varchar(100) null, /* 事由 */
    primary key(studentid, citedate),
    foreign key(studentid) references student
)
go

/* 線上意見調查 */
create table QuestionVote (	/* 線上意見調查項目 */
    QVid char(5) NOT NULL ,	/* 代號 */
    year int NOT NULL ,	/* 學年度 */
    description ntext NOT NULL ,	/* 描述 */
    studentVoteClass char(20) NULL ,	/* 可投票學生的類別 */
    staffVoteClass char(20) NULL ,	/* 可投票教職員的類別 */
    comment ntext NOT NULL ,		/* 備註 */
    questions tinyint NULL ,	/* 問題數目 */
    BegDate datetime NOT NULL,	/* 調查起日 */
    EndDate datetime NOT NULL, 	/* 調查迄日 */
    primary key(QVid)
)
GO
create table QVquestion (	/* 意見調查題目 */
    QVid char (5) NOT NULL ,	/* 代號 */
    qno tinyint NOT NULL ,	/* 題目編號 */
    question varchar (255) NOT NULL ,	/* 題目內容 */
    items tinyint NULL ,	/* 可選答案數目 */
    defaultitem char(1) NULL, 	/* 答案預設值 */
    primary key(QVid,qno),
    foreign key(QVid) references QuestionVote
)
GO
create table QVquestionitem (	/* 各題目可選答案 */
    QVid char (5) NOT NULL ,	/* 代號 */
    qno tinyint NOT NULL ,	/* 題目編號 */
    itemno tinyint NOT NULL ,	/* 可選答案編號 */
    itemdescribe varchar(255) NULL, /* 答案內容 */
    primary key(QVid, qno, itemno),
    foreign key(QVid, qno) references QVquestion
)
GO
create table QVStaffAnswer (	/* 教職員作答內容 */
    QVid char(5) NOT NULL ,	/* 代號 */
    answer varchar(50) NULL ,	/* 作答內容 */
    comment varchar(255) NULL, 	/* 額外意見 */
    id varchar(10) null, /* ID */
    foreign key(QVid) references QuestionVote
)
GO
create table QVStafflog (	/* 教職員作答紀錄 */
    QVid char (5) NOT NULL ,	/* 代號 */
    id varchar (10) NOT NULL ,	/* 教職員身份證字號 */
    voteTime varchar (50) NULL, /* 作答日期時間 */
    primary key(QVid, id),
    foreign key(id) references staff,
    foreign key(QVid) references QuestionVote
)
GO
create table QVStudentAnswer (	/* 學生作答內容 */
    QVid char (5) NOT NULL ,	/* 代號 */
    answer varchar (50) NULL ,	/* 作答內容 */
    comment varchar (255) NULL, /* 額外意見 */
    id varchar(10) null, /* 學號 */
    foreign key(QVid) references QuestionVote
)
GO
create table QVStudentlog (	/* 學生作答紀錄 */
    QVid char(5) NOT NULL ,	/* 代號 */
    studentid varchar(10) NOT NULL,	/*學生學號 */
    voteTime varchar(50) NULL, 	/* 作答日期時間 */
    primary key(QVid, studentid),
    foreign key(studentid) references student,
    foreign key(QVid) references QuestionVote
)
GO
create table mutualcourse ( /* 跨選系所 */
    deptid varchar(3) not null, /* 系所代碼 */
    admitdeptid varchar(3) not null, /* 承認系所 */
    primary key(deptid,admitdeptid),
    foreign key(deptid) references department,
    foreign key(admitdeptid) references department
)
go
create table optioncourse ( /* 選修課程 */
    deptid varchar(3) not null, /* 系所代碼 */
    courseid varchar(8) not null, /* 課號 */
    primary key(deptid,courseid),
    foreign key(deptid) references department,
    foreign key(courseid) references course
)
go
create table literacylecture ( /* 通識講座 */
    year varchar(4) not null, /* 學年期 */
    ser decimal(2) not null,  /* 第幾次 */
    type char(1) not null, /* 類別 */
    title varchar(255) not null, /* 講題 */
    speaker varchar(30) not null, /* 演講者 */
    date varchar(7) not null, /* 日期 */
    primary key (year,ser),
    foreign key(type) references corecode
)
go
create table attendliteracy ( /* 參加通識講座紀錄 */
    year varchar(4) not null, /* 學年期 */
    ser decimal(2) not null, /* 第幾次 */
    studentid varchar(10) not null, /* 學號 */
    pass char(1) not null default ' ', /* 是否通過,簽到,上傳FTSU */
    checkin_time varchar( 4 ) null,    /* 刷卡時間 */
    primary key(year,ser,studentid),
    foreign key(year,ser) references literacylecture,
    foreign key(studentid) references student
)
go
create table selectlog ( /* 選課紀錄 */
  courseid varchar(8) not null, /* 課號 */
  year int not null, /* 學年期 */
  class varchar(6) not null default '0', /* 班別 */
  studentid varchar(10) not null, /* 學號 */
  operation char(1) not null default 'A', /* A加選, D退選 */
  ip varchar(16) not null, /* 網址 */
  ltime datetime not null default getdate(), /* 紀錄時間 */
  primary key (courseid,year,class,studentid,ltime),
  foreign key (studentid) references student
)
go
create table budgetcode ( /* 預算科目代碼 */
    bcode varchar(6) not null, /*項目編號*/
    bitem varchar(30) not null, /*預算項目*/
    primary key(bcode)
)
go
create table unitbudget (
    year int not null, /* 預算年度 */
    uid	char(4)	not null, /* 單位代碼 */
    bcode varchar(6) not null, /*項目編號*/
    amount decimal(8,0)	not null default 0, /* 金額 */
    note varchar(255) not null, /* 備註 */
    primary key(year,uid,bcode),
    foreign key(uid) references unit,
    foreign key(bcode) references budgetcode
)
go
create table unitencouragestudent ( /* 各單位獎助學金清冊 */
    yearmonth int not null, /* 年月份 */
    uid	char(4) not null, /* 單位代碼 */
    studentid varchar(10) not null, /* 學號 */
    paytype char(1) not null default 'R', /* 類別, R=RA, T=TA */
    amount decimal(7,0) not null default 0, /* 金額 */
    note varchar(255) not null, /* 備註 */
    primary key(yearmonth,uid,studentid,paytype),
    foreign key(uid) references unit,
    foreign key(studentid) references student
)
go
create table studentwork ( /* 學生工讀金清冊 */
    yearmonth int not null, /* 工讀金年月 */
    studentid varchar(10) not null, /* 學號 */
    uid char(4) not null, /* 單位代碼 */
    hour decimal(3,0) not null default 0, /* 工讀時數 */
    rate decimal(3,0) not null default 100, /* 每小時費用 */
    assist char(1) not null default 'N', /* 獎助金 */
    primary key(yearmonth,studentid,uid,rate,assist),
    foreign key(studentid) references student,
    foreign key(uid) references unit
)
go
create table outsidestudentworker ( /* 校外工讀生資料 */
    id varchar(10) not null, /* 身分證字號 */
    name varchar(10) not null, /* 姓名 */
    account char(14) not null, /* 郵局帳號 */
    addr1 varchar(80) not null, /* 戶籍地址 */
    zipcode1 varchar(5) not null, /* 郵遞區號 */
    upboundary decimal(3,0) not null default 175, /* 核准上限時數 */
    primary key(id)
)
go
create table outsidestudentwork ( /* 校外工讀金清冊 */
    yearmonth int not null, /* 工讀金年月,yyyymm */
    id varchar(10) not null, /* 身分證字號 */
    uid char(4) not null, /* 單位 */
    hour decimal(3,0) not null default 0, /* 工讀時數 */
    rate decimal(3,0) not null default 100, /* 每小時費用 */
    primary key(yearmonth,id,uid,rate),
    foreign key(id) references outsidestudentworker,
    foreign key(uid) references unit
)
go
create table studentvehicle ( /* 學生車輛資料 */
  vid varchar(8) not null, /* 牌照號碼 */
  studentid varchar(10) not null, /* 車主學號 */
  passid varchar(8) not null, /* 通行證號碼 */
  vtype varchar(30) not null, /* 廠牌型號 */
  inscompany varchar(42) not null, /* 保險公司 */
  insid	varchar(28) not null, /* 保險證號碼 */
  insoverdue varchar(8) not null, /* 保險證到期日 */
  carlicensedue varchar(8) not null, /* 行車執照到期日 */
  note varchar(100) not null, /* 附註 */
  primary key(vid),
  foreign key(studentid) references student
)
go
create table studentdriverlicense ( /* 學生駕駛執照資料 */
    studentid varchar(10) not null, /* 學號 */
    type char(1) not null, /* 種類 */
    overdue varchar(8) not null, /* 駕照到期日 */
    primary key(studentid, type),
    foreign key(studentid) references student
)
go
create table trafficcode ( /* 違規事項列表 */
  code char(2) not null, /* 違規類別代碼 */
  description varchar(30) not null, /* 違規類別描述 */
  point decimal(3,1) not null default 1, /* 違規類別應記點數 */
  primary key(code)
)
go
create table trafficrecord( /* 學生違規事實 */
  violateid varchar(10) not null, /* 罰單編號 */
  studentid varchar(10)	not null, /* 違規學號 */
  vid varchar(8) null, /* 車牌號碼 */
  code char(2) not null, /* 違規類別代碼 */
  violatedate varchar(8) not null, /* 違規日期 */
  fine decimal(5,0) not null default 0, /* 罰款金額 */
  payfine char(1) not null default 'N', /* 是否已繳款 */
  primary key(violateid),
  foreign key(vid) references studentvehicle,
  foreign key(code) references trafficcode,
  foreign key(studentid) references student
)
go
create table privilegecode /* 權限代碼表 */
(
  pcode varchar(6) not null, /* 權限代碼 */
  pname varchar(30) not null, /* 權限名稱 */
  note varchar(30) not null, /* 備註 */
  primary key (pcode)
)
go
create table privilege /* 權限 */
(
  pid char(7) not null, /* 職位代碼 */
  pcode varchar(6) not null, /* 權限代碼 */
  uid char(4) not null, /* 單位代碼 */
  detail varchar(6) not null, /* 權限細項 */
  primary key (pid,pcode,uid),
  foreign key(pcode) references privilegecode,
  foreign key(pid) references position,
  foreign key(uid) references unit
)
go
create table advisorcomment ( /* 導師評語 */
    studentid varchar(10) not null, /* 學號 */
    teacherid varchar(10) not null, /* 導師 */
    year int not null, /* 學年期 */
    comment ntext not null, /* 評語 */
    primary key(studentid,teacherid,year),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table talkwith ( /* 談話紀錄 */
    studentid varchar(10) not null, /* 學號 */
    teacherid varchar(10) not null, /* 導師 */
    talkday varchar(8) not null, /* 訪談日期 */
    content ntext not null, /* 談話內容 */
    topic varchar(8) null, /* 談話主題 */
    isopen char(1) null default 'Y', /* 開放給下任導師 */
    bafflereason varchar(15) null, /* 學習困擾原因 */
    primary key(studentid,teacherid,talkday),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table printtypecode ( /* 列印文件單價表 */
    type varchar(16) not null, /* 文件名稱 */
    source char(1) not null default '0', /* 要求來源 */
    price decimal(3,0) not null default 0, /* 每份價格 */
    printer varchar(40) null, /* 印表機 */
    primary key(type, source)
)
go
create table printlog ( /* 網路列印紀錄表 */
    printid decimal(8,0) not null, /* 列印id */
    studentid varchar(10) not null, /* 學號 */
    class char(1) not null default 'B', /* 部別 */
    type varchar(16) not null, /* 文件種類 */
    copy decimal(2,0) not null default 1, /* 份數 */
    year int not null default 0, /* 學年期 */
    email varchar(40) not null, /* 通知email */
    success char(1) not null default 'N', /* 是否已印出 */
    ip varchar(15) not null default '', /* IP */
    ltime datetime not null default getdate(), /* 申請日期 */
    price decimal(4,0) not null default 0, /* 總金額 */
    receipt varchar(20) null, /* 收據編號 */
    printer varchar(40) null, /* 印表機 */
    source char(1) null default '0', /* 來源代號, 0表網路, 其它表投幣機 */
    primary key(printid),
    foreign key(studentid) references student
)
go
create table project ( /* 專題計劃 */
    id varchar(10) not null, /* 身分證字號 */
    name varchar(255) not null, /* 計劃名稱 */
    period varchar(20) not null, /* 執行期程 */
    subsidy varchar(20) not null, /* 補助單位 */
    pid varchar(22) not null, /* 計劃編號 */
    title varchar(10) not null, /* 計劃內工作 */
    primary key(id,name),
    foreign key(id) references staff
)
go
create table patent ( /* 專利 */
    id varchar(10) not null, /* 身分證字號 */
    article varchar(128) not null, /* 專利品名 */
    patentid varchar(20) not null, /* 專利字號 */
    country varchar(10) not null, /* 專利國家 */
    validdate varchar(8) not null, /* 有效期限 */
    primary key(id,article,patentid),
    foreign key(id) references staff
)
go
create table honor ( /* 學術獎勵與榮譽 */
    id varchar(10) not null, /* 身分證字號 */
    title varchar(80) not null, /* 獲獎名稱 */
    year varchar(4) not null, /* 獲獎年份 */
    primary key(id,title,year),
    foreign key(id) references staff
)
go
create table commonrank ( /* 通識課程志願 */
    year int not null, /* 學年期 */
    courseid varchar(8) not null, /* 課號 */
    class varchar(6) not null, /* 班別 */
    studentid varchar(10) not null, /* 學號 */
    rank numeric(2,0) not null default 1, /* 志願序*/
    primary key(studentid,year,rank),
    foreign key(studentid) references student,
    foreign key(courseid,year,class) references opened
)
go

create table leavecode /* 請假類別 */
(
  code char(1) not null, /* 類別代碼 */
  description varchar(4) not null, /* 請假類別 */
  primary key(code)
)
go
create table applyleave ( /* 請假單 */
  applyleaveid decimal(10,0), /* 請假單編號 */
  studentid varchar(10) not null, /* 學號 */
  year int not null, /* 學年期 */
  applyday varchar(8) not null, /* 申請日期 */
  startday varchar(8) not null, /* 開始日期 */
  endday varchar(8) not null, /* 終止日期 */
  type char(1) not null, /* 假別 */
  approved char(1) not null default '', /* 是否核准 */
  reason varchar(128) null, /* 請假事由 */
  primary key(applyleaveid),
  foreign key(studentid) references student
)
go
create table leave /* 請假時間表 */
(
    applyleaveid decimal(10,0), /* 請假單編號 */
    day varchar(8) not null, /* 日期 */
    time varchar(12) not null, /* 節次 */
    primary key (applyleaveid, day),
    foreign key (applyleaveid) references applyleave
)
go
create table absence /* 缺課紀錄 */
(
    studentid varchar(10) not null, /* 學號 */
    courseid varchar(8) not null, /* 課號 */
    year int not null, /* 學年期 */
    day varchar(8) not null, /* 日期 */
    time varchar(8) not null, /* 節次 */
    primary key (studentid, courseid, year, day),
    foreign key (studentid,courseid,year) references selected
)
go
create table applyexempt /* 抵免申請記錄 */
(
    studentid varchar(10) not null, /* 學號 */
    year int not null, /* 申請學期 */
    courseid varchar(8) not null, /* 抵免課號 */
    origname varchar(90) not null, /* 原科目名稱 */
    origcredit decimal(2,1) not null, /* 原課程學分數 */
    approved char(1) not null default '', /* 是否核准 */
    internalcid varchar(8) null, /* 內抵課號 */
    primary key(studentid, year, courseid),
    foreign key(studentid) references student,
    foreign key(courseid) references course,
    foreign key(internalcid) references course
)
create index applyexempt_cid on applyexempt(courseid)
go
create table applyaddcourse /* 人工加選記錄 */
(
    studentid varchar(10) not null, /* 學號 */
    year int not null, /* 申請學期 */
    courseid varchar(8) not null, /* 加選課號 */
    class varchar(6) not null, /* 班別 */
    approved char(1) not null default '', /* 是否核准 */
    primary key(studentid, year, courseid),
    foreign key(studentid) references student,
    foreign key(courseid,year,class) references opened
)
go
create table groupcourse /* 領域課程表 */
(
    deptid varchar(3) not null, /* 系所代碼 */
    division char(1) not null default 'B', /* 部別 */
    courselist varchar(100) not null, /* 課程列表, 以','分隔 */
    start numeric(3,0) not null, /* 開始適用學年(含) */
    stop numeric(3,0) not null default 999,  /* 最後適用學年(含) */
    mincourse numeric(1,0) not null default 0, /* 應選課程數 */
    credit numeric(2,0) not null default 0, /* 應選學分數, 與上一個欄位其中一個不是0即可 */
    title varchar(40) null, /* 描述 */
    manditory char(1) null default 'Y', /* 是否必選 */
    primary key(deptid, division, courselist, start, stop),
    foreign key(deptid) references department
)
go
create table yearcourse /* 學年課程表 */
(
    deptid varchar(3) not null, /* 系所代碼 */
    division char(1) not null default 'B', /* 部別 */
    first varchar(8) not null, /* 上學期課號 */
    second varchar(8) not null, /* 下學期課號 */
    start numeric(3,0) not null, /* 開始適用學年(含) */
    stop numeric(3,0) not null default 999,  /* 最後適用學年(含) */
    primary key(deptid, division, first, second, start, stop),
    foreign key(deptid) references department,
    foreign key(first) references course,
    foreign key(second) references course
)
go
create table dormmate /* 喜好室友表 */
(
   year int not null, /* 學年 */
   studentid varchar(10) not null, /* 學號 */
   roommate varchar(10) not null, /* 室友 */
   primary key(year,studentid,roommate),
   foreign key(studentid) references student,
   foreign key(roommate) references student
)
go
create table healthexam /* 學生體檢表 */
(
    year int not null, /* 學年 */
    studentid varchar(10) not null, /* 學號 */
    weight decimal(4,1) not null default 0, /* 體重 */
    height decimal(4,1) not null default 0, /* 身高 */
    chestxray char(1) not null default '0', /* 胸部X光檢查,0正常1異常 */
    glucose char(1) not null default '0', /* 尿糖,0陰1陽 */
    proteinuria char(1) not null default '0', /* 尿蛋白,0陰1陽 */
    UrinarypH decimal(3,1) not null default 0, /* 尿酸鹼值 */
    OccultBlood char(1) not null default '0', /* 潛血反應,0陰1陽呈陽性 */
    Hb decimal(4, 1) not null default 0, /* 血色素 */
    RBC decimal(4,1) not null default 0, /* 紅血球(百萬) */
    WBC decimal(5,0) not null default 0, /* 白血球 */
    PL decimal(4, 0) not null default 0, /* 血小板(千) */
    CholesterolTotal decimal(3,0) not null default 0, /* 總膽固醇 */
    serumCreatinine decimal(4,2) not null default 0, /* 血清肌酸酐 */
    HBsAg char(1) not null default '0', /* B型肝炎表面抗原,0陰1陽 */
    HBsAb char(1) not null default '0', /* B型肝炎表面抗體,0陰1陽 */
    HBcAb char(1) not null default '0', /* B型肝炎核心抗體,0陰1陽 */
    AntiHCV char(1) not null default '0', /* C型肝炎病毒抗體,0陰1陽 */
    GPT decimal(4,0) not null default 0, /* 肝功能GPT */
    GOT decimal(4,0) not null default 0, /* 肝功能GOT */
    VDRL char(1) not null default '0', /* 梅毒血清反應,0陰1陽 */
    triglyceride int null default 0, /* 三酸甘油脂 */
    uricacid float null default 0, /* 尿酸 */
    systolicpressure smallint null defaul 0, /* 收縮壓 */
    diastolicpressure smallint null default 0, /* 舒張壓 */
    pulse smallint null default 0, /* 脈搏 */
    bloodsugar smallint null default 0, /* 血糖 */
    primary key(studentid,year),
    foreign key(studentid) references student
)
go
create table maclist /* 網卡列表 */
(
    mac char(12) not null, /* mac address */
    uid varchar(10) not null, /* 學號或身份證字號 */
    note varchar(30) null, /* 附註 */
    ltime datetime null default getdate(), /* 紀錄時間 */
    primary key(mac,uid)
)
go
create table teammember /* 校隊名單 */
(
    team varchar(2) not null, /* 校隊代碼 */
    studentid varchar(10) not null, /* 學號 */
    primary key(team,studentid),
    foreign key(studentid) references student,
    foreign key(team) references teamcode
)
go
create table courseopinion /* 教學回饋 */
(
    id int not null, /* 序號 */
    studentid varchar(10) not null, /* 學號 */
    courseid varchar(8) not null, /* 課號 */
    year int not null, /* 學年期 */
    class varchar(6) not null, /* 班別 */
    opdate varchar(8) not null, /* 意見日期 */
    opinion ntext null, /* 意見 */
    responsetype char(1) not null default 'N', /* 回覆方式,N尚未回應,1線上回應學生,2課堂上回應學生,3學生意見存參 */
    responser varchar(10) null, /* 回覆人 */
    responsedate varchar(8) null, /* 回覆日期 */
    response ntext null, /* 回覆文字 */
    askreply char(1) null default 'N', /* 學生要求老師要回覆 */
    primary key(id),
    foreign key(courseid, year, class) references opened,
    foreign key(studentid) references student,
    foreign key(responser) references staff
)
go
create table assistancerequest /* 輔導需求表 */
(
    id int not null, /*  序號 */
    studentid varchar(10) not null, /* 學號 */
    teacherid varchar(10) not null, /* 導師 */
    reqdate varchar(8) not null, /* 提出日期 */
    reqtype varchar(7) null, /* 0課業,1情緒,2經濟,3其他 */
    reqdetail ntext null, /* 詳細內容 */
    primary key(id),
    foreign key(studentid) references student,
    foreign key(teacherid) references staff
)
go
create table assistancemail /* 轉介email */
(
    type varchar(10) not null,
    mainmail varchar(60) null,
    ccmail varchar(60) null,
    primary key(type)
)
go
create table abilityitem /* 核心能力項目 */
(
    deptid varchar(3) not null, /* 系代碼 */
    ser tinyint not null, /* 序號 */
    itemtitle nvarchar(40) not null, /* 核心能力 */
    class char(1) null default 'B', /* 部別 */
    primary key(deptid,ser),
    foreign key(deptid) references department
)
go
create table careergroup /* 職涯分類 */
(
    deptid varchar(3) not null, /* 系代碼 */
    ser tinyint not null, /* 序號 */
    itemtitle nvarchar(30) not null, /* 職涯名稱 */
    primary key(deptid, ser),
    foreign key(deptid) references department
)
go
create table lessonguidance /* 課輔 */
(
    year int not null, /* 學期 */
    studentid varchar(10) not null, /* 學號 */
    courseid varchar(8) not null, /* 課號 */
    guider varchar(10) null, /* 小老師 */
    accept char(1) not null default 'N', /* 通過申請 */
    time varchar(3) null, /* 時段 */
    stage char(1) not null, /* 申請階段 */
    primary key(year,studentid,courseid),
    foreign key(studentid) references student,
    foreign key(courseid) references course,
    foreign key(guider) references student
)
go
create table concernedstudent /* 高關懷名單 */
(
    studentid varchar(10) not null, /* 學號 */
    beginy int not null, /* 開始學期 */
    endy int null, /* 結束學期 */
    beginreason varchar(30) null, /* 進入原因 */
    endreason varchar(30) null, /* 離開原因 */
    primary key(studentid, beginy),
    foreign key(studentid) references student
)
go
drop table changepasslog
go
create table changepasslog ( /* 修改密碼記錄 */
    id varchar(10) not null, /* 帳號 */
    operation char(1) not null default 'C', /* C更改, R重設 */
    ip varchar(16) not null, /* 網址 */
    ltime datetime not null default getdate(), /* 紀錄時間 */
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
    code varchar(1) not null, /* 類別名 */
    description varchar(40), /* 類別名 */
    primary key(code)
)
go
insert projecttypecode(code,description) values('A','國科會(含結餘款計畫)')
insert projecttypecode(code,description) values('B','建教、產學合作計畫(含結餘款計畫)')
insert projecttypecode(code,description) values('C','教育部(非顧問室計劃)')
insert projecttypecode(code,description) values('D','教育部(顧問室計劃)')
insert projecttypecode(code,description) values('E','推廣教育類')
insert projecttypecode(code,description) values('F','其他')
go
create table rd_project (               /* 研發處列管計劃 */
    year          smallint not null,            /* 年度 */
    college       varchar(16)  null,            /* 院(申請時原始資料) */
    depart        varchar(255) null,            /* 系所(申請時原始資料) */
    deptid        varchar(3) null,              /* 系所代碼(以現行教務系統為準) */
    leader        nvarchar(50) not null,        /* 主持人 */
    position      varchar(8) null,              /* 職稱 */
    type          char(1) not null ,            /* 計劃類型 */
    agency        varchar(20) null,             /* 委託機構 */
    name          nvarchar(255) not null,       /* 計劃名稱 */
    pjid          varchar(50) not null,         /* 計劃編號 */
    begindate     varchar(8) null,              /* 執行期限起 */
    enddate       varchar(8) null,              /* 執行期限迄 */
    amount        int not null default 0,       /* 核定金額  */
    personnelfee  int null default 0,           /* 人事費用 */
    business      int null default 0,           /* 業務費用 */
    managefee     int null default 0,           /* 管理費用 */
    coordinatefee int null default 0, /* 配合款 */
    equipmentfee  int null default 0, /* 設備費 */
    phdmember tinyint default 0, /* 博班兼任上限 */
    mastermember tinyint default 0, /* 碩班兼任上限 */
    bachelormember tinyint default 0, /* 學班兼任上限 */
    memo          ntext null,                   /* 備註 */
    reset         ntext null,                   /* 變更 */
    external      char(1) not null default 'N', /* 校外主持人 */
    primary key(pjid)
)
go
create table projmembercode (
    code char(1) not null,
    description varchar(10) not null,
    primary key(code)
)
go
insert projmembercode(code,description) values('A','主持人')
insert projmembercode(code,description) values('B','共同主持人')
insert projmembercode(code,description) values('C','協同主持人')
insert projmembercode(code,description) values('D','專任助理')
insert projmembercode(code,description) values('E','兼任助理')
insert projmembercode(code,description) values('F','臨時人員')
go
create table projmlevelcode ( /* 計劃人員級別代碼 */
    code char(1) not null,
    description varchar(16) not null,
    primary key(code)
)
go
insert projmlevelcode(code,description) values('A','專任高中(職)')
insert projmlevelcode(code,description) values('B','專任五(二)專')
insert projmlevelcode(code,description) values('C','專任三專')
insert projmlevelcode(code,description) values('D','專任學士')
insert projmlevelcode(code,description) values('E','專任碩士')
insert projmlevelcode(code,description) values('F','專任博士')
insert projmlevelcode(code,description) values('G','兼任講師級')
insert projmlevelcode(code,description) values('H','兼任助教級')
insert projmlevelcode(code,description) values('I','兼任大專學生')
insert projmlevelcode(code,description) values('J','兼任碩士班研究生')
insert projmlevelcode(code,description) values('K','兼任博士班研究生')
insert projmlevelcode(code,description) values('L','兼任博士候選人')
go

create table rd_project_member (   /* 研發處列管計劃人員 */
    pjid          varchar(50) not null ,  /* 計劃編號 */
    studentid     varchar(10) null,   /* 學號 */
    id            varchar(10) not null,   /* 身份證號 */
    type char(1) not null default 'A', /* -->projmembercode */
    level char(1) null, /* 級別-->projmlevelcode */
    approved char(1) not null default 'Y', /* 已通過審核 */
    name  nvarchar(20) not null, /* 姓名 */
    account varchar(14) null, /* 郵局帳號 */
    salary smallint null, /* 月薪 */
    email varchar(60) null, /* email */
    work                 nvarchar(100) null,    /* 工作內容 */
    begindate            varchar(8),         /* 任職開始年月日 */
    enddate              varchar(8),         /* 聘期結束年月日 */
    memo                 ntext,             /* 備註  */
    primary key(pjid, id, begindate),
    foreign key(pjid) references rd_project(pjid),
    foreign key(studentid) references student
)
go
create table rd_project_perfee ( /* 計劃人事費用 */
    pjid          varchar(50) not null,  /* 計劃編號 */
    id            varchar(10) not null,  /* 身份證號 */
    name  nvarchar(20) not null, /* 姓名 */
    account varchar(14) null, /* 郵局帳號 */
    yearmonth     int not null, /* 年月 */
    pay           int null, /* 費用 */
    tax           int null, /* 所得稅 */
    laborfee      int null, /* 勞保 */
    healthfee     int null, /* 健保 */
    retirefee     int null, /* 退職金 */
    supportlaborfee      int null, /* 公提勞保 */
    supporthealthfee     int null, /* 公提健保 */
    supportretirefee     int null, /* 公提退職金 */
    type char(1) not null default 'D', /* 同月只能有同身份 */
    confirmed char(1) not null default 'N', /* 是否已確認金額 */
    primary key(pjid,id,yearmonth),
    foreign key(pjid) references rd_project
)
go
drop table osconfparticipant /* 海聯與會人 */
drop table whowillosshow /* 教育展參展人員 */
drop table whocanosshow /* 教育展受邀學校 */
drop table osconference /* 海聯會議 */
drop table osshow /* 海聯教育展 */
drop table osmember /* 海聯成員 */
drop table osconftypecode /* 海聯會議類別 */
drop table osmembertypecode /* 海聯成員類別 */
go
create table osmembertypecode ( /* 海聯成員類別 */
    code char(1) not null,
    description varchar(12) null,
    primary key(code)
)
go
insert osmembertypecode(code, description) values('A', '常務委員學校')
insert osmembertypecode(code, description) values('B', '分組學校')
insert osmembertypecode(code, description) values('C', '列席單位')
insert osmembertypecode(code, description) values('D', '委員學校')
insert osmembertypecode(code, description) values('E', '其他單位')
go
create table osmember (
    membercode char(2) not null, /* 單位代碼 */
    membertype char(1) not null, /* 成員屬性-->osmembertypecode */
    chineseName varchar(50) not null, /* 單位名稱 */
    phone varchar(30) null, /* 電話 */
    fax varchar(30) null, /* 傳真 */
    title varchar(20) null, /* 承辦人職稱 */
    usercname nvarchar(5) null, /* 承辦人姓名 */
    userphone varchar(20) null, /* 承辦人電話 */
    usercellular varchar(10) null, /* 承辦人手機 */
    email varchar(40) null, /* 承辦人email */
    id varchar(10) null, /* 承辦人身份證號 */
    address	varchar(128) not null, /* 承辦人戶籍地址 */
    account	varchar(16) null, /* 帳號 */
    encpass char(128) null, /* SHA512 */
    primary key(membercode)
)
go
create table osconftypecode ( /* 海聯會議類別 */
    code char(1) not null,
    description varchar(10) null,
    primary key(code)
)
go
insert osconftypecode(code,description) values('A', '常委會')
insert osconftypecode(code,description) values('B', '大會')
go
create table osconference ( /* 海聯會議 */
    confid varchar(5) not null, /* 會議編號 */
    isopened char(1) not null default 'Y', /* 開放調查 */
    openbefore varchar(20) null, /* 回覆期限 */
    conftitle varchar(30) not null, /* 會議名稱 */
    conftype char(1) null, /* 類別-->osconftypecode */
    whichday varchar(7) not null, /* 日期 */
    time varchar(30) not null, /* 時間 */
    place varchar(80) null, /* 地點 */
    contactor nvarchar(5) null, /* 聯絡人 */
    contactorphone varchar(20) null, /* 聯絡人電話 */
    contactoremail varchar(40) null, /* 聯絡人email */
    hasfood char(1) not null default 'N', /* 有供餐 */
    transporttypes tinyint default 0, /* 交通方式選擇數 */
    transportmemo ntext null, /* 交通方式選項 */
    memo ntext null, /* 附註 */
    appendix image null, /* 會議附件 */
    record image null, /* 會議記錄 */
    primary key(confid)
)
go
create table osconfparticipant ( /* 海聯與會人 */
    confid varchar(5) not null, /* 會議編號 */
    membercode char(2) not null, /* 單位代碼 */
    willattend char(1) not null default 'Y', /* 是否參加 */
    attendname nvarchar(5) null, /* 與會人姓名 */
    attendtitle varchar(30) null, /* 與會人職稱 */
    attendphone varchar(30) null, /* 與會人電話 */
    attendcellular varchar(20) null, /* 與會人手機 */
    attendemail varchar(40) null, /* 與會人email */
    attendid varchar(10) null, /* 與會人身份證號 */
    attendaddress varchar(128) null, /* 與會人戶籍地址 */
    foodchoice char(1) null, /* 1葷2素 */
    transchoice char(1) null, /* 交通方式 */
    note varchar(50) null, /* 其它 */
    primary key(confid, membercode),
    foreign key(confid) references osconference,
    foreign key(membercode) references osmember
)
go
create table osshow ( /* 海聯活動 */
    showid varchar(4) not null, /* 活動編號 */
    isopened char(1) not null default 'Y', /* 開放調查 */
    automail char(1) null default 'Y', /* 發信通知 */
    showtitle varchar(30) not null, /* 教育展名稱 */
    openbefore varchar(20) null, /* 回覆期限 */
    whichday varchar(30) not null, /* 日期 */
    place varchar(80) null, /* 地點 */
    contactor nvarchar(5) null, /* 聯絡人 */
    contactorphone varchar(20) null, /* 聯絡人電話 */
    contactoremail varchar(40) null, /* 聯絡人email */
    askpassport char(1) null default 'N', /* 調查護照 */
    asktransport char(1) null default 'N', /* 調查交通 */
    askhotel char(1) null default 'N', /* 調查飯店 */
    replymemo nvarchar(200) null, /* 個人回條說明 */
    memo ntext null, /* 附註 */
    appendix image null, /* 教育展附件 */
    primary key(showid)
)
go
create table whocanosshow ( /* 活動受邀單位 */
    showid varchar(4) not null, /* 活動編號 */
    membercode char(2) not null, /* 單位代碼 */
    name nvarchar(5) not null, /* 聯絡人姓名 */
    title varchar(20) null, /* 聯絡人職稱 */
    phone varchar(20) null, /* 聯絡人電話 */
    email varchar(40) null, /* 聯絡人email */
    primary key(showid, membercode),
    foreign key(showid) references osshow,
    foreign key(membercode) references osmember
)
go
create table whowillosshow ( /* 活動參與人 */
    showid varchar(4) not null, /* 活動編號 */
    membercode char(2) not null, /* 單位代碼 */
    attendname nvarchar(5) not null, /* 參與人姓名 */
    attendename varchar(30) not null, /* 參展人英文名 */
    attendtitle varchar(30) not null, /* 參展人職稱 */
    attendphone varchar(30) not null, /* 參展人電話 */
    attendemail varchar(40) not null, /* 參展人email */
    passport varchar(10) null, /* 護照號碼 */
    godate varchar(15) null, /* 去程日期 */
    gotime varchar(15) null, /* 去程時間 */
    goflight varchar(15) null, /* 去程航班 */
    backdate varchar(15) null, /* 回程日期 */
    backtime varchar(15) null, /* 回程時間 */
    backflight varchar(15) null, /* 回程航班 */
    hotel varchar(40) null, /* 飯店名稱 */
    roomtype char(1) null, /* 房型 */
    roommemo nvarchar(30) null, /* 房間附註 */
    reply nvarchar(500) null, /* 回條內容 */
    photo image null, /* 個人相片 */
    primary key(showid, membercode, attendname),
    foreign key(showid, membercode) references whocanosshow
)
go
/************* store procedure *****************/

create procedure usp_insert_attendliteracy( @year varchar(4),  @ser decimal(2), @studentid varchar(10), @checkin_time varchar(4) ) AS
/* 刷卡或簽到表人工 keyin 專用 */
if exists ( select studentid from attendliteracy where [year] = @year and ser = @ser and studentid = @studentid )
begin
    /* 已有刷卡紀錄 */
    /* 簽到 : @chekin_time = '簽到' */
   update attendliteracy
     set checkin_time = @checkin_time
     where year = @year and
           ser = @ser and
           studentid = @studentid
     return 0 /* OK */
end
else
begin
     /* 沒有刷卡紀錄 */
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
/* 繳交作業專用 */
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
     return -1 /* 沒有刷卡紀錄或簽到記錄 */
end
go

/************* store procedure *****************/


create procedure usp_update2_attendliteracy( @year varchar(4), @ser decimal(2), @studentid varchar(10), @pass char(1) ) AS
/* 繳交作業專用 */
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
           values( @year, @ser, @studentid, '簽到', @pass )
     return 0 /* OK */
end
go

/************* store procedure *****************/


create procedure usp_query_attendliteracy( @year varchar(4), @ser decimal(2), @studentid varchar(10)) AS
/* 繳交作業專用 */
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