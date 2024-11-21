-- 아파트 매매
CREATE TABLE apt_trade (
                           id BIGINT AUTO_INCREMENT PRIMARY KEY,
                           apt_name VARCHAR(100) NOT NULL,         -- 단지명
                           build_year INT,                         -- 건축년도
                           buyer_type VARCHAR(50),                 -- 매수자 유형
                           deal_amount BIGINT,                     -- 거래금액 (만원 단위)
                           deal_year INT NOT NULL,                 -- 계약년도
                           deal_month INT NOT NULL,                -- 계약월
                           deal_day INT,                           -- 계약일
                           dealing_type VARCHAR(50),               -- 거래유형 (직거래/중개거래)
                           exclu_use_area DECIMAL(10, 2),          -- 전용면적
                           floor INT,                              -- 층
                           jibun VARCHAR(50),                      -- 지번
                           land_leasehold_gbn CHAR(1),             -- 토지임대부 여부
                           sgg_code VARCHAR(5),                    -- 지역코드
                           umd_name VARCHAR(50),                   -- 법정동명
                           estate_agent_address VARCHAR(300)       -- 중개사 소재지
);

-- 아파트 전월세
CREATE TABLE apt_rent (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,          -- 고유 식별자
                          apt_name VARCHAR(255) NOT NULL,               -- 아파트 이름
                          build_year INT NOT NULL,                      -- 건축 연도
                          contract_term VARCHAR(255),                   -- 계약 기간
                          contract_type VARCHAR(255),                   -- 계약 유형
                          deal_day INT NOT NULL,                        -- 거래 일
                          deal_month INT NOT NULL,                      -- 거래 월
                          deal_year INT NOT NULL,                       -- 거래 연도
                          deposit varchar(50) NOT NULL,                      -- 보증금
                          exclu_use_area DECIMAL(10, 2) NOT NULL,       -- 전용 면적
                          floor INT NOT NULL,                           -- 층수
                          jibun VARCHAR(255),                           -- 지번
                          monthly_rent BIGINT NOT NULL,                 -- 월세
                          pre_deposit BIGINT,                           -- 이전 보증금
                          pre_monthly_rent BIGINT,                      -- 이전 월세
                          sgg_code VARCHAR(10) NOT NULL,               -- 시군구 코드
                          umd_name VARCHAR(255) NOT NULL,              -- 읍면동명
                          use_rr_right VARCHAR(255),                   -- 사용 권리
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 생성 일시
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 갱신 일시
);

-- 법정동
CREATE TABLE home (
                      id BIGINT AUTO_INCREMENT PRIMARY KEY,
                      law_dong_name VARCHAR(255) NOT NULL, -- 법정동명
                      status VARCHAR(50) NOT NULL,         -- 폐지여부
                      law_dong_code BIGINT NOT NULL        -- 법정동코드
);