
Select TO_CHAR(stream_date, 'Month'),count(f17_t14_customer.u_name)
From f17_t14_customer,f17_t14_shipped,f17_t14_streams
Where f17_t14_customer.u_name=f17_t14_streams.u_name OR f17_t14_customer.u_name=f17_t14_shipped.u_name
GROUP BY TO_CHAR(stream_date, 'Month');

select
 from f17_t14_profile,f17_t14_customer
  where f17_t14_profile.u_id= f17_t14_customer.u_id
   having max(select count(f17_t14_streams.p_id) from f17_t14_streams group by f17_t14_streams.u_name);


select f17_t14_tvshows.video_id,f17_t14_videos.title
from f17_t14_videos, f17_t14_tvshows, f17_t14_streams
where f17_t14_streams.video_id=f17_t14_tvshows.video_id and f17_t14_tvshows.video_id=f17_t14_videos.video_id
group by  having count(f17_t14_streams.u_name)>1


select v_id from F17_T14_videos,F17_T14_movies
where  movies.video_id=videos.video_id
group by region
having rating=5;
