-- MySQL Schema for Google Ads APAC Analytics
-- Create database
CREATE DATABASE IF NOT EXISTS google_ads_apac;
USE google_ads_apac;

-- Markets table
CREATE TABLE markets (
    market_id INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(50) NOT NULL,
    state_province VARCHAR(100) NOT NULL,
    population BIGINT NOT NULL,
    gdp_per_capita DECIMAL(10,2) NOT NULL,
    market_maturity ENUM('Emerging', 'Developing', 'Mature') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(200) NOT NULL,
    industry VARCHAR(100) NOT NULL,
    company_size ENUM('Small', 'Medium', 'Large', 'Enterprise') NOT NULL,
    market_id INT NOT NULL,
    total_ad_spend DECIMAL(15,2) DEFAULT 0,
    monthly_ad_spend DECIMAL(15,2) DEFAULT 0,
    customer_segment ENUM('SMB', 'Mid-Market', 'Enterprise') NOT NULL,
    lifetime_value DECIMAL(15,2) DEFAULT 0,
    registration_date DATE NOT NULL,
    last_activity_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (market_id) REFERENCES markets(market_id)
);

-- Ads Products table
CREATE TABLE ads_products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    product_category ENUM('Search', 'Display', 'Video', 'Shopping', 'App') NOT NULL,
    launch_date DATE NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Customer Product Adoption table
CREATE TABLE customer_product_adoption (
    adoption_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    adoption_date DATE NOT NULL,
    adoption_score DECIMAL(3,2) NOT NULL CHECK (adoption_score >= 0 AND adoption_score <= 5),
    monthly_spend DECIMAL(15,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES ads_products(product_id)
);

-- Sales Opportunities table
CREATE TABLE sales_opportunities (
    opportunity_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    opportunity_type ENUM('New Business', 'Upsell', 'Cross-sell', 'Renewal') NOT NULL,
    stage ENUM('Prospecting', 'Qualification', 'Proposal', 'Negotiation', 'Closed Won', 'Closed Lost') NOT NULL,
    estimated_value DECIMAL(15,2) NOT NULL,
    probability_percent INT NOT NULL CHECK (probability_percent >= 0 AND probability_percent <= 100),
    expected_close_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- A/B Test Experiments table
CREATE TABLE ab_test_experiments (
    experiment_id INT PRIMARY KEY AUTO_INCREMENT,
    experiment_name VARCHAR(200) NOT NULL,
    experiment_type ENUM('UI/UX', 'Pricing', 'Messaging', 'Product Feature') NOT NULL,
    variant VARCHAR(50) NOT NULL,
    sample_size INT NOT NULL,
    conversion_rate DECIMAL(5,4) NOT NULL,
    engagement_score DECIMAL(3,2) NOT NULL,
    revenue_impact DECIMAL(15,2) NOT NULL,
    statistical_significance BOOLEAN NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
