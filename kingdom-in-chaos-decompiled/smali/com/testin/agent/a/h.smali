.class public Lcom/testin/agent/a/h;
.super Landroid/app/Application;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/testin/agent/a/h$a;
    }
.end annotation


# static fields
.field public static a:Lcom/testin/agent/TestinAgentConfig;

.field public static b:Landroid/content/Context;

.field public static c:J

.field public static d:J

.field public static e:Z

.field public static f:Z

.field public static g:Lcom/testin/agent/c/d;

.field public static h:Lcom/testin/agent/a/l;

.field public static i:Lcom/testin/agent/a/a;

.field public static j:Ljava/lang/Long;

.field public static k:Ljava/lang/Long;

.field private static n:Lcom/testin/agent/a/h;


# instance fields
.field public l:Ljava/util/Set;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    sput-wide v2, Lcom/testin/agent/a/h;->c:J

    sput-wide v2, Lcom/testin/agent/a/h;->d:J

    sput-boolean v0, Lcom/testin/agent/a/h;->e:Z

    sput-boolean v0, Lcom/testin/agent/a/h;->f:Z

    new-instance v0, Lcom/testin/agent/c/d;

    invoke-direct {v0}, Lcom/testin/agent/c/d;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->g:Lcom/testin/agent/c/d;

    new-instance v0, Lcom/testin/agent/a/l;

    invoke-direct {v0}, Lcom/testin/agent/a/l;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    new-instance v0, Lcom/testin/agent/a/a;

    invoke-direct {v0}, Lcom/testin/agent/a/a;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    sput-object v1, Lcom/testin/agent/a/h;->j:Ljava/lang/Long;

    sput-object v1, Lcom/testin/agent/a/h;->k:Ljava/lang/Long;

    sput-object v1, Lcom/testin/agent/a/h;->n:Lcom/testin/agent/a/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/a/h;->l:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/testin/agent/a/h;->f:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/testin/agent/a/h;
    .locals 2

    const-class v1, Lcom/testin/agent/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/testin/agent/a/h;->n:Lcom/testin/agent/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/a/h;

    invoke-direct {v0}, Lcom/testin/agent/a/h;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->n:Lcom/testin/agent/a/h;

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->n:Lcom/testin/agent/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/testin/agent/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/a/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/testin/agent/a/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/h;->m:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/testin/agent/a/h$a;

    invoke-direct {v2, p0}, Lcom/testin/agent/a/h$a;-><init>(Lcom/testin/agent/a/h;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    sget-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/a/l;

    invoke-direct {v0}, Lcom/testin/agent/a/l;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    :cond_0
    sget-object v0, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/testin/agent/a/a;

    invoke-direct {v0}, Lcom/testin/agent/a/a;-><init>()V

    sput-object v0, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    :cond_1
    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/testin/agent/e/g;->a(Ljava/lang/Long;)V

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/c/f;->a(Landroid/content/Context;)Lcom/testin/agent/c/f;

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/e/e;->a(Landroid/content/Context;)Lcom/testin/agent/e/e;

    invoke-direct {p0}, Lcom/testin/agent/a/h;->c()V

    :cond_2
    new-instance v0, Lcom/testin/agent/a/i;

    invoke-direct {v0, p0}, Lcom/testin/agent/a/i;-><init>(Lcom/testin/agent/a/h;)V

    invoke-virtual {v0}, Lcom/testin/agent/a/i;->start()V

    return-void
.end method
