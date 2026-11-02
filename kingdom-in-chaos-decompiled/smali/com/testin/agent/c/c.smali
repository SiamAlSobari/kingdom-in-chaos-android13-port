.class public Lcom/testin/agent/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/testin/agent/c/c;->a:J

    iput-object p3, p0, Lcom/testin/agent/c/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/testin/agent/c/c;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/testin/agent/c/c;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/testin/agent/c/c;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/c;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/c/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/c;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/c/c;->d:Ljava/util/List;

    return-object v0
.end method
