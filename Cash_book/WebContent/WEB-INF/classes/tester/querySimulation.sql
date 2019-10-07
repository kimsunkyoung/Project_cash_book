------------------------------------------------------------------------
-- 회원가입
INSERT INTO MEMBER(PHONE, NAME, PW)
	 		VALUES("입력값1", "입력값2", "입력값3");
	 

------------------------------------------------------------------------ 
-- 로그인
SELECT * FROM MEMBER 
		WHERE PHONE = "입력값"
		  AND PW = "입력값2";

		  
------------------------------------------------------------------------	  
-- 수입입력
-- [1] DATE_LIST 보유 검사
SELECT * FROM DATE_LIST
		WHERE DATE_LIST.PHONE = "입력값1" 
		  AND DATE_LIST.LOCAL_DATE = "입력값2";
		  
-- [1-1] DATE_LIST 없는 경우
INSERT INTO DATE_LIST(PHONE, LOCAL_DATE)
	 		   VALUES("입력값1", "입력값2");
	 
-- [2] INCOME 개수 구하기
SELECT COUNT(*) FROM INCOME
			   WHERE INCOME_PHONE = "입력값1"
			     AND INCOME_LOCAL_DATE = "입력값2";
			     
-- [3] INCOME에 수입 데이터 저장
INSERT INTO INCOME(INCOME_PHONE,
				   INCOME_LOCAL_DATE,
				   INCOME_INDEX,
				   INCOME_NAME,
				   INCOME_AMOUNT,
				   INCOME_MEMO)
			VALUES("입력값1",
				   "입력값2",
				   "입력값3",
				   "입력값4",
				   "입력값5",
				   "입력값6");
			
				   
------------------------------------------------------------------------
-- 지출입력
-- [1] DATE_LIST 보유 겁사
SELECT * FROM DATE_LIST
		WHERE DATE_LIST.PHONE = "입력값1"
		  AND DATE_LIST.LOCAL_DATE = "입력값2";
		  
-- [1-1] DATE_LIST 없는 경우
INSERT INTO DATE_LIST(PHONE, LOCAL_DATE)
			   VALUES("입력값1", "입력값2");
			   
-- [2] OUTCOME 개수 구하기
SELECT COUNT(*) FROM OUTCOME
			   WHERE OUTCOME_PHONE = "입력값1"
			     AND OUTCOME_LOCAL_DATE = "입력값2";
			     
-- [3] OUTCOME에 지출 데이터 저장
INSERT INTO OUTCOME(OUTCOME_PHONE,
					OUTCOME_LOCAL_DATE,
					OUTCOME_INDEX,
					OUTCOME_NAME,
					OUTCOME_AMOUNT,
					OUTCOME_MEMO)
  			 VALUES("입력값1",
  			 		"입력값2",
  			 		"입력값3",
  			 		"입력값4",
  			 		"입력값5",
  			 		"입력값6");
  			 		
  			 		
------------------------------------------------------------------------
-- 수입 검색
SELECT * FROM INCOME
		WHERE INCOME_PHONE = "입력값1"
		  AND INCOME_LOCAL_DATE = "입력값2";
		  

------------------------------------------------------------------------
-- 지출 검색
SELECT * FROM OUTCOME
		WHERE OUTCOME_PHONE = "입력값1"
		  AND OUTCOME_LOCAL_DATE = "입력값2";
		  
		  
------------------------------------------------------------------------
-- 수입 삭제
-- [1] 수입삭제
DELETE FROM INCOME
	  WHERE INCOME_PHONE = "입력값1"
	    AND INCOME_LOCAL_DATE = "입력값2"
	    AND INCOME_INDEX = "입력값3";
	    
-- [2] 삭제 이후 데이터 개수 구하기
SELECT COUNT(*) FROM INCOME
			   WHERE INCOME_PHONE = "입력값1"
			     AND INCOME_LOCAL_DATE = "입력값2"
			     AND INCOME_INDEX > "입력값3";
			   
-- [3] 삭제 이후 데이터의 INCOME_INDEX 값 갱신하기 ([2]에서 구한 개수만큼 반복)
UPDATE INCOME SET INCOME_INDEX = INCOME_INDEX - 1
			WHERE INCOME_PHONE = "입력값1"
			  AND INCOME_LOCAL_DATE = "입력값2"
			  AND INCOME_INDEX = "입력값3";

		  
------------------------------------------------------------------------
-- 지출 삭제
-- [1] 지출 삭제
DELETE FROM OUTCOME
	  WHERE OUTCOME_PHONE = "입력값1"
	    AND OUTCOME_LOCAL_DATE = "입력값2"
	    AND OUTCOME_INDEX = "입력값3";
	    
-- [2] 삭제 이후 데이터 개수 구하기
SELECT COUNT(*) FROM OUTCOME
			   WHERE OUTCOME_PHONE = "입력값1"
			     AND OUTCOME_LOCAL_DATE = "입력값2"
			     AND OUTCOME_INDEX > "입력값3";
			     
-- [3] 삭제 이후 데이터의 OUTCOME_INDEX 값 갱신하기 ([2]에서 구한 개수만큼 반복)
UPDATE OUTCOME SET OUTCOME_INDEX = OUTCOME_INDEX - 1
			 WHERE OUTCOME_PHONE = "입력값1"
			   AND OUTCOME_LOCAL_DATE = "입력값2"
			   AND OUTCOME_INDEX = "입력값3";