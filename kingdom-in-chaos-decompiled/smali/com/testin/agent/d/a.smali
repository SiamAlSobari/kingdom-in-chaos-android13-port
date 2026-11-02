.class public Lcom/testin/agent/d/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static final c:Ljava/lang/String;

.field public static final d:Lcom/testin/agent/d/a/b;

.field private static e:Z

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/testin/agent/d/a;->a:Ljava/lang/String;

    sput-boolean v2, Lcom/testin/agent/d/a;->e:Z

    sput-boolean v2, Lcom/testin/agent/d/a;->b:Z

    const-string v0, "/cpi/apm.php"

    invoke-static {v0}, Lcom/testin/agent/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/testin/agent/d/a;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "apm1-collector.qtestin.com"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "apm-collector.qtestin.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/testin/agent/d/a;->f:[Ljava/lang/String;

    new-instance v0, Lcom/testin/agent/d/a/b;

    sget-object v1, Lcom/testin/agent/d/a;->f:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/testin/agent/d/a/b;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/testin/agent/d/a;->d:Lcom/testin/agent/d/a/b;

    return-void
.end method
