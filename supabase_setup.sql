-- Create the submissions table for AdRadar Intelligence System
CREATE TABLE IF NOT EXISTS submissions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    -- Section 1: ICP
    contact_name TEXT,
    contact_company TEXT,
    contact_email TEXT,
    industry TEXT,
    industries_exclude TEXT,
    region TEXT,
    company_size TEXT,
    revenue TEXT,
    
    -- Section 2: Ad Spend
    min_spend TEXT,
    platform TEXT,
    signal TEXT,
    broken_account TEXT,
    price_range TEXT,
    
    -- Section 3: Best Clients
    c1_website TEXT, c1_industry TEXT, c1_spend TEXT, c1_platform TEXT, c1_notes TEXT,
    c2_website TEXT, c2_industry TEXT, c2_spend TEXT, c2_platform TEXT, c2_notes TEXT,
    c3_website TEXT, c3_industry TEXT, c3_spend TEXT, c3_platform TEXT, c3_notes TEXT,
    c4_website TEXT, c4_industry TEXT, c4_spend TEXT, c4_platform TEXT, c4_notes TEXT,
    c5_website TEXT, c5_industry TEXT, c5_spend TEXT, c5_platform TEXT, c5_notes TEXT,
    client_trait TEXT,
    client_problem TEXT,
    
    -- Section 4: Filters
    disqualify TEXT,
    min_spend_hard TEXT,
    min_traffic TEXT,
    min_revenue TEXT,
    must_have TEXT,
    other_dq TEXT,
    
    -- Section 5: Outreach
    decision_maker TEXT,
    results TEXT,
    unique_advantage TEXT,
    typical_roi TEXT,
    email_tone TEXT,
    
    -- Section 6: Scoring
    score_simultaneous_ads TEXT,
    score_creative_age TEXT,
    score_copy_quality TEXT,
    score_paid_dependency TEXT,
    score_team_size TEXT,
    score_ad_spend TEXT,
    score_traffic TEXT,
    score_ticket TEXT,
    score_no_agency TEXT,
    score_founder_led TEXT,
    
    -- Section 7: Readiness
    trigger TEXT,
    lead_volume TEXT,
    followup_speed TEXT,
    
    -- Section 8: Final
    email_must_include TEXT,
    competitors TEXT,
    final_notes TEXT
);

-- Enable RLS (Optional, but recommended)
-- ALTER TABLE submissions ENABLE ROW LEVEL SECURITY;
-- CREATE POLICY "Allow anonymous inserts" ON submissions FOR INSERT WITH CHECK (true);
