.class public Lcom/testin/agent/d/a/b;
.super Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/testin/agent/d/a/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/testin/agent/d/a/b;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
