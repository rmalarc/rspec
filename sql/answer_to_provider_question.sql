use mdc_prod;


select 
    lal.lab_acct_key, p . *
from
    LAB_ACCOUNT_LOCATION lal   # get lab account locations
        inner join
    LOCATION_PROVIDER lp ON lp.loc_key = lal.loc_key # join to providers for location
        inner join
    PROVIDER p ON p.prov_key = lp.prov_key # join to provider information tabe
where
    lab_acct_key = 20;

