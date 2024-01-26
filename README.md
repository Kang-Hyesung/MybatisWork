■■■ Mybatis Framework 환경설정 ■■■

1. http://blog.mybatis.org/

   - Products 메뉴 선택(클릭)
     https://blog.mybatis.org/p/products.html 로 이동
   
   - 이동한 페이지의 Products 항목의 리스트들 중 
     MyBatis 3	SQL Mapping Framework for Java 에서
     download 메뉴 선택(클릭)
     https://github.com/mybatis/mybatis-3/releases 로 이동

   - 이동한 페이지에서 mybatis-3.5.10 항목의 
     -> Assets 선택(클릭) 

   - 확장된 노드의 목록들 중
     mybatis-3.5.10.zip 3.69 MB May 24, 2022 선택(클릭)
     -> 파일 다운로드 진행

   - 다시 브라우저의 뒤로가기 버튼 선택
     https://blog.mybatis.org/p/products.html 로 이동

   - 이동한 페이지의 Integration 항목의 리스트들 중
     spring   Integration with Spring 에서
     download 메뉴 선택(클릭)
     https://github.com/mybatis/spring/releases로 이동

   - 이동한 페이지에서 mybatis-spring-1.3.2 항목의
     -> Assets 선택(클릭) 

   - 확장된 노드의 목록들 중 mybatis-spring-1.3.2.zip 52.1 KB Mar 14, 2018 선택
     -> 파일 다운로드 진행

2. 다운로드 완료된 파일을 압축 해제하여 아래의 파일을 준비한다.
   
   - mybatis-3.5.10
   - mybatis-spring-1.3.2

3. SpringMVC + mybatis 프로젝트 관련 라이브러리 등록
  
   - org.springframework.aop-3.0.2.RELEASE.jar
   - org.springframework.asm-3.0.2.RELEASE.jar
   - org.springframework.beans-3.0.2.RELEASE.jar
   - org.springframework.context-3.0.2.RELEASE.jar
   - org.springframework.core-3.0.2.RELEASE.jar
   - org.springframework.expression-3.0.2.RELEASE.jar
   - org.springframework.jdbc-3.0.2.RELEASE.jar
   - org.springframework.transaction-3.0.2.RELEASE.jar
   - org.springframework.web-3.0.2.RELEASE.jar
   - org.springframework.web.servlet-3.0.2.RELEASE.jar

   - c:\SpringMVCStudy\MybatisWork01\WebContent\WEB-INF\lib\com.springsource.org.apache.commons.logging-1.1.1.jar
   
   - ojdbc6.jar

   - jstl.jar
   - standard.jar

     +

   - mybatis-3.5.10
   - mybatis-spring-1.3.2

   ※ 매퍼 XNL 심플

     다우놀드를 수행한 pdf 파일 mybatis-3.5.10 내용 중
     2.1.5 Exploring Mapped SQL Statements 항목의
     XML 관련 내용을 확인하여 샘플 DTO 를 구성할 수 있도록 한다.
     (pdf 파일의 페이지 번호 4)

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
"http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="org.mybatis.example.BlogMapper">
<select id="selectBlog" resultType="Blog">
select * from Blog where id = #{id}
</select>
</mapper>

-----------------------------------------------------------
■■■ Spring MVC + Annotation + mybatis 프로젝트 실습 01 ■■■

○ 프로젝트
  : MybatisWork01

○ 관련 라이브러리 등록 및 환경 구성(※ 위에서 정리한 내용 참조)
  ...

○ 기능 구현
  : 마이바티스 환경 구성 후 프로젝트 정상 실행 여부 확인


-----------------------------------------------------------
■■■ Spring MVC + Annotation + mybatis 프로젝트 실습 02 ■■■

○ 프로젝트
  : MybatisWork02

○ 관련 라이브러리 등록 및 환경 구성(※ 위에서 정리한 내용 참조)
  ...

○ 기능 구현
  : 이름, 전화번호를 데이터베이스에서 읽어내어 화면에 출력
    이 과정에서 nybatis 활용

○ 데이터베이스 관련 객체 준비
  - 사용 계정 : scott
  - 테이블 : TBL_MEMBERLIST
  - 테이블 구조 : MID   NUMBER         pk
               , NAME  VARCHAR2(30)
               , NAME  VARCHAR2(40)
  - 시퀀스 : MEMBERLISTSEQ

○ 페이지 레이아웃 구성
  회원 관리

  이름 [      ]
  전화 [      ]

  < 회원 추가 >

  전체 인원 수 : 2명
  -----------------
  번호 이름 전화
   1  노노노 010-11..
   2  이이이 010-22..
  -----------------

○ 물리적 파일 구성

  - MybatisWork02_scott.sql     -> 데이터베이스 관련 작업

  - MemberDTO.Java              -> 데이터 전송 객체 자료형 클래스(DTO)
  - IMemberDAO.Java             -> 인터페이스
  - MemberDAO.xml               -> mybatis 환경 설정 파일 활용
  - MemberMain.Java             -> mybatis 객체 활용(Controller)
  - MemberList.jsp              -> view 페이지 활용

  - dispatcher-servlet.xml      -> mybatis 객체 등록 및 활용
  - web.xml                     -> front controller 등록 및 인코딩 설정(필터 활용)

○ 사용자 최초 요청 주소
  http://localhost:3306/MybatisWork02/memberlist.action


-----------------------------------------------------------
■■■ Spring MVC + Annotation + mybatis 프로젝트 실습 02 ■■■

○ 프로젝트
  : MybatisWork03

○ 관련 라이브러리 등록 및 환경 구성(※ 위에서 정리한 내용 참조)
  ...

○ 기능 구현
  : 기본적인 성적 관리
    이 과정에서 nybatis 활용

○ 데이터베이스 관련 객체 준비
  - 사용 계정 : scott
  - 테이블 : TBL_STUDENT
  - 테이블 구조 : SID   NUMBER         pk
               , NAME  VARCHAR2(30)
               , TEL   VARCHAR2(40)

  - 테이블 : TBL_GRADE
  - 테이블 구조 : SID   NUMBER         pk
               , SUB1  NUMBER(3)
               , SUB2  NUMBER(3)
               , SUB3  NUMBER(3)
  - 뷰 : STUDENTVIEW
    - 뷰 구조 : SID, NAME, TEL, SUB
                                -- 참조 레코드 수
  - 뷰 : GRADEVIEW
    - 뷰 구조 : SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
                                             --  ---  ---
                                            총점  평균 등급(합격, 과락, 불합격)

○ 물리적 파일 구성

  - MybatisWork02_scott.sql     -> 데이터베이스 관련 작업

  - StudentDTO.java             -> 데이터 전송 객체 자료형 클래스(DTO)
                                   학생 데이터 저장 및 전송
  - GradeDTO.java               -> 데이터 전송 객체 자료형 클래스(DTO)
                                   성적 데이터 저장 및 전송

  - IStudentDAO.java            -> 인터페이스
                                   학생 데이터 액션 처리 메소드 선언
  - IGradeDAO.java              -> 인터페이스
                                   성적 데이터 액션 처리 메소드 선언

  - StudentDAO.xml              -> mybatis 환경 설정 파일 활용
  - GradeDAO.xml                -> mybatis 환경 설정 파일 활용

  - StudentController.java      -> Controller
  - GradeController.java        -> Controller

  - StudentList.jsp             -> View 페이지
                                   (학생 명단 출력 레이아웃 구성)
  - StudentInsertForm.jsp       -> View 페이지
                                   (학생 데이터 입력 폼 구성)
  - GradeList.jsp               -> View 페이지
                                   (성적 리스트 출력 레이아웃 구성)
  - GradeInsertForm.jsp         -> View 페이지
                                   (성적 데이터 입력 폼 구성)
  

  - dispatcher-servlet.xml      -> mybatis 객체 등록 및 활용
  - web.xml                     -> front controller 등록 및 인코딩 설정(필터 활용)

○ 사용자 최초 요청 주소
  http://localhost:3306/MybatisWork03/studentlist.action

```sql
SELECT USER
FROM DUAL;
--== SCOTT

--○ 실습 테이블 생성
CREATE TABLE TBL_STUDENT
( SID   NUMBER         
, NAME  VARCHAR2(30)
, TEL   VARCHAR2(40)
, CONSTRAINT STUDENT_SID_PK PRIMARY KEY(SID)
);
--== Table TBL_STUDENT이(가) 생성되었습니다.

--○ 데이터 입력
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(1, '정정정', '010-1111-1111');
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(2, '이이이', '010-2222-2222');
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(3, '강혜성', '010-3333-3333');
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(4, '박박박', '010-4444-4444');
--== 1 행 이(가) 삽입되었습니다. * 4

--○ 확인
SELECT *
FROM TBL_STUDENT;
/*
1	정정정	010-1111-1111
2	이이이	010-2222-2222
3	강혜성	010-3333-3333
4	박박박	010-4444-4444
*/

--○ 커밋
COMMIT; --커밋

--○ 실습 테이블 생성
CREATE TABLE TBL_GRADE
( SID   NUMBER
, SUB1  NUMBER(3)
, SUB2  NUMBER(3)
, SUB3  NUMBER(3)
, CONSTRAINT GRADE_SID_PK PRIMARY KEY(SID)
, CONSTRAINT GRADE_SID_FK FOREIGN KEY(SID)
             REFERENCES TBL_STUDENT(SID)
, CONSTRAINT GRADE_SUB1_CK CHECK(SUB1 BETWEEN 0 AND 100)
, CONSTRAINT GRADE_SUB2_CK CHECK(SUB2 BETWEEN 0 AND 100)
, CONSTRAINT GRADE_SUB3_CK CHECK(SUB3 BETWEEN 0 AND 100)
);
--== Table TBL_GRADE이(가) 생성되었습니다.

--○ 데이터 입력
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(1, 90, 90, 80);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(2, 92, 92, 82);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(3, 70, 60, 50);
--== 1 행 이(가) 삽입되었습니다. * 3

--○ 확인
SELECT *
FROM TBL_GRADE;
/*
1	90	90	80
2	92	92	82
3	70	60	50
*/

COMMIT; -- 커밋

--○ 뷰 생성(STUDENTVIEW)
CREATE OR REPLACE VIEW STUDENTVIEW
AS
SELECT S.SID AS SID
     , S.NAME AS NAME
     , S.TEL AS TEL
     , (SELECT COUNT(*)
        FROM TBL_GRADE
        WHERE SID = S.SID) AS SUB
FROM TBL_STUDENT S;
--== View STUDENTVIEW이(가) 생성되었습니다.

--○ 뷰 생성(GRADEVIEW)
CREATE OR REPLACE VIEW GRADEVIEW
AS
SELECT S.SID AS SID
     , S.NAME AS NAME
     , NVL(G.SUB1, -1) AS SUB1
     , NVL(G.SUB2, -1) AS SUB2
     , NVL(G.SUB3, -1) AS SUB3
     , NVL((G.SUB1 + G.SUB2 + G.SUB3), -1) AS TOT
     , NVL(ROUND((G.SUB1 + G.SUB2 + G.SUB3)/3), -1) AS AVG
     , (CASE WHEN NVL((G.SUB1 + G.SUB2 + G.SUB3)/3, -1) <= 60 THEN '불합격'
             WHEN (G.SUB1 <= 40) OR (G.SUB2<=40) OR (G.SUB3<=40) THEN '과락' 
             ELSE '합격'
             END) AS CH
FROM TBL_STUDENT S LEFT JOIN TBL_GRADE G
ON S.SID = G.SID;
--== View GRADEVIEW이(가) 생성되었습니다.

--○ 뷰(STUDENTVIEW) 조회
SELECT SID, NAME, TEL, SUB
FROM STUDENTVIEW
ORDER BY SID;
/*
1	정정정	010-1111-1111	1
2	이이이	010-2222-2222	1
3	강혜성	010-3333-3333	1
4	박박박	010-4444-4444	0
*/

--○ 뷰(GRADEVIEW) 조회
SELECT SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
FROM GRADEVIEW
ORDER BY SID;
/*
1	정정정	90	90	80	260	87	합격
2	이이이	92	92	82	266	89	합격
3	강혜성	70	60	50	180	60	불합격
4	박박박	-1	-1	-1	-1	-1	불합격
*/

--○ 인원 수 확인
SELECT COUNT(*) AS COUNT
FROM TBL_STUDENT;
--== 4

select *
FROM TBL_GRADE;


rollback;

UPDATE TBL_GRADE
SET SUB1 = 90, SUB2 = 80, SUB3 = 70
WHERE SID = 5;

SELECT SID, NAME, TEL
FROM TBL_STUDENT
WHERE SID = 1;

SELECT SID, SUB1, SUB2, SUB3
FROM TBL_GRADE
WHERE SID = 1;
```
