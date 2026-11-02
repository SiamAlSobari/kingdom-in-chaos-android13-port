.class Lcom/testin/agent/a/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/testin/agent/a/h;


# direct methods
.method constructor <init>(Lcom/testin/agent/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/i;->a:Lcom/testin/agent/a/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/testin/agent/e/g;->g()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
