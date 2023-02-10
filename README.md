# 暴风web

## 配置

1. npm install
2. 复制 `config.local.example.js` 为 `config.local.js`
3. 并且修改数据库配置为自己的数据库, 例如：
   ```
   host: '127.0.0.1',
   port: 3306,
   user: 'root',
   password: '123456',
   database: 'baofeng_app_v1_web'
   ```
4. 启动 npm run dev
   
## 数据库

```sql
# 数据库初始化
create database `baofeng_app_v1_web` default character set utf8mb4 collate utf8mb4_bin;
use baofeng_app_v1_web;
# 运行 sql/init.sql 文件
```

## 暴风测试环境

学生端：https://baofeng-v1.openjianghu.org/doc
老师端：https://baofeng-v1.openjianghu.org/admin

## 测试用户
> 密码: P@ssword@@
admin
m3659N
m3611F
m3658K
m3862G
m3995Q
m3662X
10000Q
100005W

## 同步 admin/upload/xx 至 web/upload/xx

ln -s /www/wwwroot/baofeng-course-mgmt/upload/articleMaterial /www/wwwroot/baofeng-student/web/upload/articleMaterial
ln -s /www/wwwroot/baofeng-course-mgmt/upload/materialRepo /www/wwwroot/baofeng-student/web/upload/materialRepo
ln -s /www/wwwroot/baofeng-course-mgmt/upload/assignmentMaterial /www/wwwroot/baofeng-student/web/upload/assignmentMaterial

## nginx

```config
    
    # 将favicon.ico 上传到 /www/wwwroot/app.jhxf.org/
    location = /favicon.ico {
      root  /www/wwwroot/app.jhxf.org;
    }

    location / {
        proxy_pass http://127.0.0.1:8303;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header REMOTE-HOST $remote_addr;
    
        # wss 支持
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
        
        # 禁用缓存
        expires 1s;
        add_header X-Cache $upstream_cache_status;
        add_header Cache-Control no-cache;
        proxy_no_cache 1;
        proxy_cache_bypass 1;
    }
```

cremeb components路径
http://zhishifufei.crmeb.net/wap/first/zsff/components/base-login/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/base-login/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/base-login/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-dialog/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-dialog/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-dialog/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/exchange-guide/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/exchange-guide/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/exchange-guide/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/rebate-guide/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/rebate-guide/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/rebate-guide/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/pay-dialog/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/pay-dialog/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/pay-dialog/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/poster/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/poster/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/poster/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/problem/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/problem/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/problem/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/question/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/question/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/question/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/material/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/material/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/recommend/material/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/apply-dialog/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/apply-dialog/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/apply-dialog/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/related-lecturer/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/related-lecturer/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/related-lecturer/index.css

http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-list/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-list/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/evaluate-list/index.css


http://zhishifufei.crmeb.net/wap/first/zsff/components/question-guide/index.js
http://zhishifufei.crmeb.net/wap/first/zsff/components/question-guide/index.html
http://zhishifufei.crmeb.net/wap/first/zsff/components/question-guide/index.css


cremeb页面路径

http://zhishifufei.crmeb.net/
http://zhishifufei.crmeb.net/wap/index/index
http://zhishifufei.crmeb.net/wap/topic/question_wrong
http://zhishifufei.crmeb.net/wap/topic/question_user
http://zhishifufei.crmeb.net/wap/special/details.html?id=139
http://zhishifufei.crmeb.net/wap/special/single_details.html?id=145
http://zhishifufei.crmeb.net/wap/special/data_details.html?id=8
http://zhishifufei.crmeb.net/wap/merchant/teacher_detail.html?id=2
http://zhishifufei.crmeb.net/wap/special/task_info.html?id=149&specialId=139&viewing_time=40078.08000
http://zhishifufei.crmeb.net/wap/store/detail.html?id=12
http://zhishifufei.crmeb.net/wap/special/confirm_order.html?cartId=1522
http://zhishifufei.crmeb.net/wap/my/edit_address/cartId/1522.html
http://zhishifufei.crmeb.net/wap/special/special_cate.html
http://zhishifufei.crmeb.net/wap/article/news_list.html
http://zhishifufei.crmeb.net/wap/article/news_detail.html?id=12
http://zhishifufei.crmeb.net/wap/activity/index.html
http://zhishifufei.crmeb.net/wap/special/activity_details.html?id=9
http://zhishifufei.crmeb.net/wap/index/unified_list.html?type=0&title=热门推荐&recommend_id=17
http://zhishifufei.crmeb.net/wap/topic/question_category.html?type=2
http://zhishifufei.crmeb.net/wap/material/material_list.html
http://zhishifufei.crmeb.net/wap/merchant/teacher_list.html
http://zhishifufei.crmeb.net/wap/special/source_detail?id=76
http://zhishifufei.crmeb.net/wap/topic/problem_result.html?test_id=11

http://zhishifufei.crmeb.net/wap/special/question_index.html?id=9
http://zhishifufei.crmeb.net/wap/topic/question_detail.html?test_id=9&e_id=4245
http://zhishifufei.crmeb.net/wap/topic/question_sheet.html?test_id=9&record_id=4245&index=0&is_analysis=0&txamination_time=20&exam_time=11023
http://zhishifufei.crmeb.net/wap/topic/question_result.html?test_id=9

http://zhishifufei.crmeb.net/wap/special/exchange?special_id=145