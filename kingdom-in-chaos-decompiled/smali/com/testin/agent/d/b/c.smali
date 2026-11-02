.class Lcom/testin/agent/d/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/testin/agent/d/b/a;


# direct methods
.method constructor <init>(Lcom/testin/agent/d/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/d/b/c;->a:Lcom/testin/agent/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/testin/agent/d/b/c;->a:Lcom/testin/agent/d/b/a;

    invoke-static {v0}, Lcom/testin/agent/d/b/a;->b(Lcom/testin/agent/d/b/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/testin/agent/d/b/c;->a:Lcom/testin/agent/d/b/a;

    invoke-static {v0}, Lcom/testin/agent/d/b/a;->b(Lcom/testin/agent/d/b/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/d/b/c;->a:Lcom/testin/agent/d/b/a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/testin/agent/d/b/a;->b(Lcom/testin/agent/d/b/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/testin/agent/d/b/c;->a:Lcom/testin/agent/d/b/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/testin/agent/d/b/a;->a(Lcom/testin/agent/d/b/a;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
