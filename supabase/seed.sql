insert into public.tenants (slug, name)
values ('prequel','Prequel Design')
on conflict (slug) do nothing;

insert into public.sessions (tenant_id)
select id from public.tenants where slug='prequel'
limit 1;
