select article.id, title, content, user.email from assignment.article
left join assignment.user on user.id = article.id_user;

select * from assignment.article order by id limit 6 offset 6