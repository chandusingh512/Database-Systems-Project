------------ Query to Update Name of A Distributor ------------


UPDATE	F17_T14_DISTRIBUTOR

Name='Neil Rehman'

WHERE D_Email='daos@hocur.lk';

------------ Query to Add a New Actor entry in Actor Table ------------


INSERT INTO F17_T14_ACTOR VALUES ('2045','Raj Kumar Yadav','Started with kai po che and latest movie is shaadi mein zaroor aana',TO_DA
TE('10/08/1980','MM/DD/YYYY'));



-- Update PRODUCTION name from Samuel Goldwyn Productions to CBS

UPDATE F17_T14_MOVIES
SET Production = 'CBS'
WHERE VIDEO_ID = 100;



-- Delete the ACTOR with actor name James ARTHUR
DELETE
FROM F17_14_ACTOR
WHERE NAME = 'JAMES ARTHUR';


----update profile details in the profile table by adding the follwing values INTO F17_T14_PROFILE

INSERT INTO F17_T14_PROFILE(P_ID,P_NAME,DOB,U_NAME) VALUES ('4','James','8/19/95','Leonard.McDonald');
INSERT INTO F17_T14_PROFILE(P_ID,P_NAME,DOB,U_NAME) VALUES ('5','Bryan','4/7/86','Nannie.Robertson');
