คำสั่ง laravel 
 0 คำสั่ง runserver
    php artisan serve
    ตัวอย่างการสร้าง project laravel version ก่อนไม่ใช่ version ล่าสุด
    composer create-project laravel/laravel backend 8.x.* --prefer-dist
 1 การสร้าง Controller
    php artisan make:controller [Name]Controller
    php artisan make:controller [NameController] --resource 
 2 คำสั่งสำหรับเปิดปิดระบบ 
    php artisan up เปิด  ปิด php artisan down
 3 คำสั่งดู routes ทีมี
    php artisan route:list
    php artisan route:list --path=api เป็น routes ที่ใช้สำหรับ route ที่ api
    php artisan route:list --path=api --method=post  เป็น routes ที่ใช้สำหรับ route ที่ api และแสดง method ที่เป็น post 

 4 คำสั่งเกี่ยวกับการสร้างฐานข้อมูล
    php artisan make:migration create_ชื่อเทเบิ้ล_table
    php artisan make:migration  ชื่อไฟล์อะไรก็ได้ หมายเหตุตำแหน่งไฟล์อยู่ที่ database/migrations
    php artisan migrate เป็นคำสั่งที่ใช้สำหรับรันไฟล์ที่เราสร้างให้ไปสร้าง table ในฐานข้อมูล
    php artisan migrate:fresh   เป็นการลบข้อมูลใน table ทั้งหมด ออก 
    php artisan migrate:install Create the migration repository อันนี้ไม่รู้ใช้ทำอะไร
    php artisan migrate:refresh Reset and re-run all migrations ลบข้อมูลตาราง และสร้างใหม่ ห้ามใช้ในกรณที่มีข้อมูลใน tableแล้ว
    php artisan migrate:reset Rollback all database migrations 
    php artisan migrate:rollback เป็นการลบ table ฐานข้อมูลออก ทั้งหมด
    php artisan migrate:status Show the status of each migration
    คำสั่งลัด
    php artisan make:model --migration --controller Product --api ตัวอย่างการสร้างไฟล์ทั้งสาม migration controller model 
    php artisan make:model Product -mc --api เหมือนคำสั่งด้านบนแค่ย่อให้สั้นลง
   /------------------------------------------------------------
     Seeding การ insert ข้อมูล
   ------------------------------------------------------------
    php artisan make:seeder  ชื่อไฟล์ -> EmployeesSeeder 
    php artisan db:seed เป็นการ run file ส่งข้อมูลลง Employees
    php artisan migrate:fresh --seed เป็นการสร้าง migration และ seed ข้อมูล พร้อมกัน
    php artisan make:factory ชื่อไฟล์ -> PostFactory เหมาะสำหรับ random ข้อมูล 

  5 การสร้าง Model สำหรับผูกกับตาราง
     คำสั่ง php artisan make::model  ชื่อ model 
   
  6 การติดตั้งและใช้งาน laravel sanctum 
     - composer require laravel/sanctum
     - การนำ sanctum มาใช้งาน
        - php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"
        - การ add sanctum's middleware to your api middleware group
           - 1 ไปที่ app/http/kernel
           - 2 ให้ไปที่ middlewareGroups หัวข้อ api 
           - 3 ให้เปิด  \Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful::class, ออก
        - สร้างไฟล์ Auth Controller เพื่อเวลาข้อใช้ api         
          php artisan make:controller AuthController --model=User 




//คำสั่ง laravel ทั้งหมด 
Available commands:
  clear-compiled         Remove the compiled class file
  completion             Dump the shell completion script
  db                     Start a new database CLI session
  down                   Put the application into maintenance / demo mode
  env                    Display the current framework environment
  help                   Display help for a command
  inspire                Display an inspiring quote
  list                   List commands
  migrate                Run the database migrations
  optimize               Cache the framework bootstrap files
  serve                  Serve the application on the PHP development server
  test                   Run the application tests
  tinker                 Interact with your application
  up                     Bring the application out of maintenance mode
 auth
  auth:clear-resets      Flush expired password reset tokens
 cache
  cache:clear            Flush the application cache
  cache:forget           Remove an item from the cache
  cache:table            Create a migration for the cache database table
 config
  config:cache           Create a cache file for faster configuration loading
  config:clear           Remove the configuration cache file
 db
  db:seed                Seed the database with records
  db:wipe                Drop all tables, views, and types
 event
  event:cache            Discover and cache the application's events and listeners
  event:clear            Clear all cached events and listeners
  event:generate         Generate the missing events and listeners based on registration
  event:list             List the application's events and listeners
 key
  key:generate           Set the application key
 make
  make:cast              Create a new custom Eloquent cast class
  make:channel           Create a new channel class
  make:command           Create a new Artisan command
  make:component         Create a new view component class
  make:controller        Create a new controller class
  make:event             Create a new event class
  make:exception         Create a new custom exception class
  make:factory           Create a new model factory
  make:job               Create a new job class
  make:listener          Create a new event listener class
  make:mail              Create a new email class
  make:middleware        Create a new middleware class
  make:migration         Create a new migration file
  make:model             Create a new Eloquent model class
  make:notification      Create a new notification class
  make:observer          Create a new observer class
  make:policy            Create a new policy class
  make:provider          Create a new service provider class
  make:request           Create a new form request class
  make:resource          Create a new resource
  make:rule              Create a new validation rule
  make:seeder            Create a new seeder class
  make:test              Create a new test class
 migrate
  migrate:fresh          Drop all tables and re-run all migrations
  migrate:install        Create the migration repository
  migrate:refresh        Reset and re-run all migrations
  migrate:reset          Rollback all database migrations
  migrate:rollback       Rollback the last database migration
  migrate:status         Show the status of each migration
 model
  model:prune            Prune models that are no longer needed
 notifications
  notifications:table    Create a migration for the notifications table
 optimize
  optimize:clear         Remove the cached bootstrap files
 package
  package:discover       Rebuild the cached package manifest
 queue
  queue:batches-table    Create a migration for the batches database table
  queue:clear            Delete all of the jobs from the specified queue
  queue:failed           List all of the failed queue jobs
  queue:failed-table     Create a migration for the failed queue jobs database table
  queue:flush            Flush all of the failed queue jobs
  queue:forget           Delete a failed queue job
  queue:listen           Listen to a given queue
  queue:monitor          Monitor the size of the specified queues
  queue:prune-batches    Prune stale entries from the batches database
  queue:prune-failed     Prune stale entries from the failed jobs table
  queue:restart          Restart queue worker daemons after their current job
  queue:retry            Retry a failed queue job
  queue:retry-batch      Retry the failed jobs for a batch
  queue:table            Create a migration for the queue jobs database table
  queue:work             Start processing jobs on the queue as a daemon
 route
  route:cache            Create a route cache file for faster route registration
  route:clear            Remove the route cache file
  route:list             List all registered routes
 sail
  sail:install           Install Laravel Sail's default Docker Compose file
  sail:publish           Publish the Laravel Sail Docker files
 sanctum
  sanctum:prune-expired  Prune tokens expired for more than specified number of hours.
 schedule
  schedule:clear-cache   Delete the cached mutex files created by scheduler
  schedule:list          List the scheduled commands
  schedule:run           Run the scheduled commands
  schedule:test          Run a scheduled command
  schedule:work          Start the schedule worker
 schema
  schema:dump            Dump the given database schema
 session
  session:table          Create a migration for the session database table
 storage
  storage:link           Create the symbolic links configured for the application
 stub
  stub:publish           Publish all stubs that are available for customization
 vendor
  vendor:publish         Publish any publishable assets from vendor packages
 view
  view:cache             Compile all of the application's Blade templates
  view:clear             Clear all compiled view files