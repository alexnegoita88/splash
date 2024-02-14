create table `tm_daily_numbers`
(
    `id`         bigint unsigned not
        null auto_increment primary key,
    `name`       varchar(255) not null,
    `url`        varchar(255) not null,
    `start_date` timestamp    not null,
    `segment_id` varchar(255) not null,
    `venue_name` varchar(25
        5
) not null, `venue_id` varchar(255) not null, `tm_event_id` bigint unsigned not null, `statistic_date` timestamp not null, `gaprimary` int not null, `garesale` int not null, `gavip` i
nt not null, `gaplatinum` int not null, `primary` int not null, `resale` int not null, `vip` int not null, `platinum` int not null, `total` int not null, `yesterday_gaprimary` int not
null, `yesterday_garesale` int not null, `yesterday_gavip` int not null, `yesterday_gaplatinum` int not null, `yesterday_primary` int not null, `yesterday_resale` int not null, `yester
day_vip` int not null, `yesterday_platinum` int not null, `yesterday_total` int not null, `added_gaprimary` int not null, `added_garesale` int not null, `added_gavip` int not null, `ad
ded_gaplatinum` int not null, `added_primary` int not null, `added_resale` int not null, `added_vip` int not null, `added_platinum` int not null, `added_total` int not null, `sold_gapr
imary` int not null, `sold_garesale` int not null, `sold_gavip` int not null, `sold_gaplatinum` int not null, `sold_primary` int not null, `sold_resale` int not null, `sold_vip` int no
t null, `sold_platinum` int not null, `sold_total` int not null, `thirdparty` int not null, `yesterday_thirdparty` int not null, `added_thirdparty` int not null, `sold_thirdparty` int
not null, `day_primary_delta` int not null, `day_primary_delta_diff` int not null, `week_primary_delta` int not null, `week_primary_delta_diff` int not null, `month_primary_delta` int
not null, `month_primary_delta_diff` int not null, `day_gaprimary_delta` int not null, `day_gaprimary_delta_diff` int not null, `week_gaprimary_delta` int not null, `week_gaprimary_del
ta_diff` int not null, `month_gaprimary_delta` int not null, `month_gaprimary_delta_diff` int not null, `day_vip_delta` int not null, `day_vip_delta_diff` int not null, `week_vip_delta
` int not null, `week_vip_delta_diff` int not null, `month_vip_delta` int not null, `month_vip_delta_diff` int not null, `day_platinum_delta` int not null, `day_platinum_delta_diff` in
t not null, `week_platinum_delta` int not null, `week_platinum_delta_diff` int not null, `month_platinum_delta` int not null, `month_platinum_delta_diff` int not null, `day_resale_delt
a` int not null, `day_resale_delta_diff` int not null, `week_resale_delta` int not null, `week_resale_delta_diff` int not null, `month_resale_delta` int not null, `month_resale_delta_d
iff` int not null, `day_garesale_delta` int not null, `day_garesale_delta_diff` int not null, `week_garesale_delta` int not null, `week_garesale_delta_diff` int not null, `month_garesa
le_delta` int not null, `month_garesale_delta_diff` int not null, `week_added_gaprimary` int not null, `month_added_gaprimary` int not null, `week_added_garesale` int not null, `month_
added_garesale` int not null, `week_added_gavip` int not null, `month_added_gavip` int not null, `week_added_gaplatinum` int not null, `month_added_gaplatinum` int not null, `week_adde
d_primary` int not null, `month_added_primary` int not null, `week_added_resale` int not null, `month_added_resale` int not null, `week_added_vip` int not null, `month_added_vip` int n
ot null, `week_added_platinum` int not null, `month_added_platinum` int not null, `week_added_total` int not null, `month_added_total` int not null, `week_sold_gaprimary` int not null,
 `month_sold_gaprimary` int not null, `week_sold_garesale` int not null, `month_sold_garesale` int not null, `week_sold_gavip` int not null, `month_sold_gavip` int not null, `week_sold
_gaplatinum` int not null, `month_sold_gaplatinum` int not null, `week_sold_primary` int not null, `month_sold_primary` int not null, `week_sold_resale` int not null, `month_sold_resal
e` int not null, `week_sold_vip` int not null, `month_sold_vip` int not null, `week_sold_platinum` int not null, `month_sold_platinum` int not null, `week_sold_total` int not null, `mo
nth_sold_total` int not null, `week_added_thirdparty` int not null, `month_added_thirdparty` int not null, `week_sold_thirdparty` int not null, `month_sold_thirdparty` int not null, `last_scrape` timestamp not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci')
