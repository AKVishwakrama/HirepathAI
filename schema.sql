-- HirePath AI Master Schema
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE resumes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    raw_text TEXT,
    parsed_json JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE companies (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) UNIQUE NOT NULL,
    logo_url TEXT,
    industry VARCHAR(100) DEFAULT 'IT/Software'
);

CREATE TABLE interview_questions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    company_id UUID REFERENCES companies(id),
    job_role VARCHAR(100),
    question_text TEXT,
    difficulty_level VARCHAR(20),
    is_past_paper BOOLEAN DEFAULT TRUE,
    year_asked INT
);

CREATE TABLE interview_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES users(id),
    question_id UUID REFERENCES interview_questions(id),
    user_answer TEXT,
    feedback JSONB,
    score_out_of_10 INT
);
