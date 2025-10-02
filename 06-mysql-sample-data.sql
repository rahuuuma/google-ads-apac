-- MySQL Sample Data for Google Ads APAC Analytics
USE google_ads_apac;

-- Insert Markets data
INSERT INTO markets (country, state_province, population, gdp_per_capita, market_maturity) VALUES
-- Indonesia
('Indonesia', 'Jakarta', 10770487, 15000.00, 'Mature'),
('Indonesia', 'West Java', 48201562, 8000.00, 'Developing'),
('Indonesia', 'East Java', 40666889, 7500.00, 'Developing'),
('Indonesia', 'Central Java', 34577919, 7000.00, 'Developing'),
('Indonesia', 'Banten', 11990411, 9000.00, 'Developing'),
('Indonesia', 'Bali', 4314138, 12000.00, 'Mature'),
('Indonesia', 'North Sumatra', 14794919, 6500.00, 'Emerging'),
('Indonesia', 'South Sulawesi', 9045000, 6000.00, 'Emerging'),
('Indonesia', 'Papua', 4343631, 4000.00, 'Emerging'),
('Indonesia', 'Maluku', 1800000, 3500.00, 'Emerging'),

-- Australia
('Australia', 'New South Wales', 8166000, 55000.00, 'Mature'),
('Australia', 'Victoria', 6681000, 52000.00, 'Mature'),
('Australia', 'Queensland', 5185000, 48000.00, 'Mature'),
('Australia', 'Western Australia', 2682000, 65000.00, 'Mature'),
('Australia', 'South Australia', 1772000, 45000.00, 'Mature'),
('Australia', 'Tasmania', 541000, 42000.00, 'Developing'),
('Australia', 'Australian Capital Territory', 431000, 75000.00, 'Mature'),
('Australia', 'Northern Territory', 245000, 50000.00, 'Developing');

-- Insert Ads Products data
INSERT INTO ads_products (product_name, product_category, launch_date, is_active) VALUES
('Search Ads', 'Search', '2020-01-01', TRUE),
('Display Ads', 'Display', '2020-02-01', TRUE),
('YouTube Ads', 'Video', '2020-03-01', TRUE),
('Shopping Ads', 'Shopping', '2020-04-01', TRUE),
('App Ads', 'App', '2020-05-01', TRUE),
('Performance Max', 'Search', '2022-01-01', TRUE),
('Discovery Ads', 'Display', '2021-06-01', TRUE),
('Local Ads', 'Search', '2021-03-01', TRUE);

-- Insert Customers data
INSERT INTO customers (company_name, industry, company_size, market_id, total_ad_spend, monthly_ad_spend, customer_segment, lifetime_value, registration_date, last_activity_date) VALUES
-- Indonesia customers
('PT Tokopedia', 'E-commerce', 'Enterprise', 1, 2500000.00, 150000.00, 'Enterprise', 5000000.00, '2020-01-15', '2024-12-01'),
('PT Gojek', 'Transportation', 'Enterprise', 1, 1800000.00, 120000.00, 'Enterprise', 3600000.00, '2020-02-20', '2024-11-28'),
('PT Bukalapak', 'E-commerce', 'Large', 1, 1200000.00, 80000.00, 'Enterprise', 2400000.00, '2020-03-10', '2024-12-05'),
('PT Shopee', 'E-commerce', 'Enterprise', 2, 2000000.00, 130000.00, 'Enterprise', 4000000.00, '2020-01-25', '2024-12-02'),
('PT Traveloka', 'Travel', 'Large', 1, 800000.00, 60000.00, 'Mid-Market', 1600000.00, '2020-04-05', '2024-11-30'),
('PT OVO', 'Fintech', 'Large', 1, 600000.00, 45000.00, 'Mid-Market', 1200000.00, '2020-05-15', '2024-11-25'),
('PT DANA', 'Fintech', 'Medium', 1, 400000.00, 30000.00, 'Mid-Market', 800000.00, '2020-06-20', '2024-12-01'),
('PT Blibli', 'E-commerce', 'Large', 2, 900000.00, 70000.00, 'Enterprise', 1800000.00, '2020-03-15', '2024-11-28'),
('PT Lazada', 'E-commerce', 'Large', 3, 1100000.00, 85000.00, 'Enterprise', 2200000.00, '2020-02-10', '2024-12-03'),
('PT JD.id', 'E-commerce', 'Medium', 1, 500000.00, 35000.00, 'Mid-Market', 1000000.00, '2020-07-01', '2024-11-27'),

-- Australia customers
('Woolworths Group', 'Retail', 'Enterprise', 11, 3000000.00, 200000.00, 'Enterprise', 6000000.00, '2020-01-10', '2024-12-01'),
('Coles Group', 'Retail', 'Enterprise', 11, 2800000.00, 180000.00, 'Enterprise', 5600000.00, '2020-01-20', '2024-11-30'),
('Commonwealth Bank', 'Banking', 'Enterprise', 11, 2500000.00, 160000.00, 'Enterprise', 5000000.00, '2020-02-01', '2024-12-02'),
('Telstra', 'Telecommunications', 'Enterprise', 11, 2200000.00, 140000.00, 'Enterprise', 4400000.00, '2020-02-15', '2024-11-28'),
('Westpac', 'Banking', 'Enterprise', 12, 2000000.00, 130000.00, 'Enterprise', 4000000.00, '2020-03-01', '2024-12-01'),
('ANZ Bank', 'Banking', 'Enterprise', 12, 1900000.00, 120000.00, 'Enterprise', 3800000.00, '2020-03-10', '2024-11-29'),
('BHP Group', 'Mining', 'Enterprise', 14, 1800000.00, 110000.00, 'Enterprise', 3600000.00, '2020-04-01', '2024-12-03'),
('Rio Tinto', 'Mining', 'Enterprise', 14, 1700000.00, 100000.00, 'Enterprise', 3400000.00, '2020-04-15', '2024-11-27'),
('Qantas Airways', 'Airlines', 'Large', 11, 1200000.00, 80000.00, 'Enterprise', 2400000.00, '2020-05-01', '2024-12-01'),
('Virgin Australia', 'Airlines', 'Large', 11, 800000.00, 60000.00, 'Mid-Market', 1600000.00, '2020-05-20', '2024-11-30');

-- Insert Customer Product Adoption data
INSERT INTO customer_product_adoption (customer_id, product_id, adoption_date, adoption_score, monthly_spend) VALUES
-- Tokopedia
(1, 1, '2020-01-20', 4.8, 80000.00),
(1, 2, '2020-02-15', 4.5, 40000.00),
(1, 3, '2020-03-10', 4.2, 30000.00),
(1, 4, '2020-04-05', 4.7, 35000.00),

-- Gojek
(2, 1, '2020-02-25', 4.6, 70000.00),
(2, 2, '2020-03-20', 4.3, 30000.00),
(2, 3, '2020-04-15', 4.4, 20000.00),

-- Bukalapak
(3, 1, '2020-03-15', 4.4, 50000.00),
(3, 2, '2020-04-10', 4.1, 20000.00),
(3, 4, '2020-05-05', 4.3, 10000.00),

-- Shopee
(4, 1, '2020-02-01', 4.7, 75000.00),
(4, 2, '2020-02-28', 4.4, 35000.00),
(4, 3, '2020-03-25', 4.5, 20000.00),

-- Traveloka
(5, 1, '2020-04-10', 4.3, 40000.00),
(5, 2, '2020-05-05', 4.0, 15000.00),
(5, 3, '2020-06-01', 4.2, 5000.00),

-- OVO
(6, 1, '2020-05-20', 4.2, 30000.00),
(6, 2, '2020-06-15', 3.9, 10000.00),
(6, 3, '2020-07-10', 4.1, 5000.00),

-- DANA
(7, 1, '2020-06-25', 4.0, 20000.00),
(7, 2, '2020-07-20', 3.8, 8000.00),
(7, 3, '2020-08-15', 3.9, 2000.00),

-- Blibli
(8, 1, '2020-03-20', 4.5, 45000.00),
(8, 2, '2020-04-15', 4.2, 20000.00),
(8, 4, '2020-05-10', 4.4, 5000.00),

-- Lazada
(9, 1, '2020-02-15', 4.6, 55000.00),
(9, 2, '2020-03-10', 4.3, 25000.00),
(9, 3, '2020-04-05', 4.4, 5000.00),

-- JD.id
(10, 1, '2020-07-05', 4.1, 25000.00),
(10, 2, '2020-08-01', 3.9, 8000.00),
(10, 4, '2020-08-20', 4.0, 2000.00),

-- Woolworths
(11, 1, '2020-01-15', 4.9, 120000.00),
(11, 2, '2020-02-10', 4.6, 50000.00),
(11, 3, '2020-03-05', 4.7, 20000.00),
(11, 4, '2020-04-01', 4.8, 10000.00),

-- Coles
(12, 1, '2020-01-25', 4.8, 110000.00),
(12, 2, '2020-02-20', 4.5, 45000.00),
(12, 3, '2020-03-15', 4.6, 18000.00),
(12, 4, '2020-04-10', 4.7, 7000.00),

-- Commonwealth Bank
(13, 1, '2020-02-05', 4.7, 100000.00),
(13, 2, '2020-03-01', 4.4, 40000.00),
(13, 3, '2020-03-25', 4.5, 15000.00),
(13, 4, '2020-04-20', 4.6, 5000.00),

-- Telstra
(14, 1, '2020-02-20', 4.6, 90000.00),
(14, 2, '2020-03-15', 4.3, 35000.00),
(14, 3, '2020-04-10', 4.4, 12000.00),

-- Westpac
(15, 1, '2020-03-05', 4.5, 85000.00),
(15, 2, '2020-03-30', 4.2, 30000.00),
(15, 3, '2020-04-25', 4.3, 10000.00),

-- ANZ Bank
(16, 1, '2020-03-15', 4.4, 80000.00),
(16, 2, '2020-04-10', 4.1, 28000.00),
(16, 3, '2020-05-05', 4.2, 8000.00),

-- BHP Group
(17, 1, '2020-04-05', 4.3, 70000.00),
(17, 2, '2020-04-30', 4.0, 25000.00),
(17, 3, '2020-05-25', 4.1, 5000.00),

-- Rio Tinto
(18, 1, '2020-04-20', 4.2, 65000.00),
(18, 2, '2020-05-15', 3.9, 22000.00),
(18, 3, '2020-06-10', 4.0, 3000.00),

-- Qantas Airways
(19, 1, '2020-05-05', 4.4, 50000.00),
(19, 2, '2020-05-30', 4.1, 20000.00),
(19, 3, '2020-06-25', 4.2, 10000.00),

-- Virgin Australia
(20, 1, '2020-05-25', 4.1, 40000.00),
(20, 2, '2020-06-20', 3.8, 15000.00),
(20, 3, '2020-07-15', 3.9, 5000.00);

-- Insert Sales Opportunities data
INSERT INTO sales_opportunities (customer_id, opportunity_type, stage, estimated_value, probability_percent, expected_close_date) VALUES
(1, 'Upsell', 'Negotiation', 500000.00, 80, '2024-12-31'),
(2, 'Cross-sell', 'Proposal', 300000.00, 60, '2025-01-15'),
(3, 'New Business', 'Qualification', 200000.00, 40, '2025-02-01'),
(4, 'Upsell', 'Proposal', 400000.00, 70, '2025-01-30'),
(5, 'Cross-sell', 'Negotiation', 150000.00, 75, '2024-12-20'),
(6, 'New Business', 'Prospecting', 100000.00, 30, '2025-03-01'),
(7, 'Upsell', 'Qualification', 80000.00, 50, '2025-02-15'),
(8, 'Cross-sell', 'Proposal', 250000.00, 65, '2025-01-20'),
(9, 'New Business', 'Negotiation', 180000.00, 85, '2024-12-25'),
(10, 'Upsell', 'Prospecting', 120000.00, 35, '2025-03-15'),
(11, 'Upsell', 'Negotiation', 600000.00, 90, '2024-12-15'),
(12, 'Cross-sell', 'Proposal', 450000.00, 75, '2025-01-10'),
(13, 'New Business', 'Qualification', 350000.00, 55, '2025-02-20'),
(14, 'Upsell', 'Proposal', 300000.00, 70, '2025-01-25'),
(15, 'Cross-sell', 'Negotiation', 280000.00, 80, '2024-12-30'),
(16, 'New Business', 'Prospecting', 200000.00, 40, '2025-03-10'),
(17, 'Upsell', 'Qualification', 250000.00, 60, '2025-02-10'),
(18, 'Cross-sell', 'Proposal', 220000.00, 65, '2025-01-15'),
(19, 'New Business', 'Negotiation', 180000.00, 85, '2024-12-28'),
(20, 'Upsell', 'Prospecting', 150000.00, 45, '2025-03-05');

-- Insert A/B Test Experiments data
INSERT INTO ab_test_experiments (experiment_name, experiment_type, variant, sample_size, conversion_rate, engagement_score, revenue_impact, statistical_significance, start_date, end_date) VALUES
('Search Ad Headlines', 'Messaging', 'Control', 10000, 0.0234, 3.2, 15000.00, TRUE, '2024-10-01', '2024-10-31'),
('Search Ad Headlines', 'Messaging', 'Variant A', 10000, 0.0287, 3.8, 25000.00, TRUE, '2024-10-01', '2024-10-31'),
('Search Ad Headlines', 'Messaging', 'Variant B', 10000, 0.0211, 2.9, 8000.00, TRUE, '2024-10-01', '2024-10-31'),
('Display Ad Creative', 'UI/UX', 'Control', 15000, 0.0156, 2.8, 12000.00, FALSE, '2024-11-01', '2024-11-30'),
('Display Ad Creative', 'UI/UX', 'Variant A', 15000, 0.0167, 3.1, 15000.00, FALSE, '2024-11-01', '2024-11-30'),
('Display Ad Creative', 'UI/UX', 'Variant B', 15000, 0.0143, 2.6, 8000.00, FALSE, '2024-11-01', '2024-11-30'),
('YouTube Ad Length', 'Product Feature', 'Control', 8000, 0.0312, 4.1, 20000.00, TRUE, '2024-09-01', '2024-09-30'),
('YouTube Ad Length', 'Product Feature', 'Variant A', 8000, 0.0289, 3.7, 16000.00, TRUE, '2024-09-01', '2024-09-30'),
('YouTube Ad Length', 'Product Feature', 'Variant B', 8000, 0.0356, 4.5, 28000.00, TRUE, '2024-09-01', '2024-09-30'),
('Shopping Ad Layout', 'UI/UX', 'Control', 12000, 0.0198, 3.3, 18000.00, TRUE, '2024-08-01', '2024-08-31'),
('Shopping Ad Layout', 'UI/UX', 'Variant A', 12000, 0.0223, 3.7, 22000.00, TRUE, '2024-08-01', '2024-08-31'),
('Shopping Ad Layout', 'UI/UX', 'Variant B', 12000, 0.0176, 2.9, 14000.00, TRUE, '2024-08-01', '2024-08-31');
