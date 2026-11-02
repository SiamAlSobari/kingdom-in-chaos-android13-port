.class Lcom/testin/agent/d/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/testin/agent/d/b/a;


# direct methods
.method constructor <init>(Lcom/testin/agent/d/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/d/b/b;->b:Lcom/testin/agent/d/b/a;

    iput-object p2, p0, Lcom/testin/agent/d/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/testin/agent/d/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/testin/agent/d/b/b;->b:Lcom/testin/agent/d/b/a;

    invoke-static {v1}, Lcom/testin/agent/d/b/a;->a(Lcom/testin/agent/d/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    const-string v3, "Tcache_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, "Lastsave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/testin/agent/d/b/b;->b:Lcom/testin/agent/d/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/testin/agent/d/b/b;->b:Lcom/testin/agent/d/b/a;

    invoke-static {v4}, Lcom/testin/agent/d/b/a;->a(Lcom/testin/agent/d/b/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/testin/agent/d/b/a;->a(Lcom/testin/agent/d/b/a;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/testin/agent/d/b/b;->b:Lcom/testin/agent/d/b/a;

    iget-object v1, p0, Lcom/testin/agent/d/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/testin/agent/d/b/a;->a(Lcom/testin/agent/d/b/a;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
