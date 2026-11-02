.class public Lcom/droidhang/crosspromotion/util/RandUtil;
.super Ljava/lang/Object;
.source "RandUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/droidhang/crosspromotion/util/RandUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/droidhang/crosspromotion/util/RandUtil;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/droidhang/crosspromotion/util/RandUtil;, "Lcom/droidhang/crosspromotion/util/RandUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getRandom()Ljava/util/Random;
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/droidhang/crosspromotion/util/RandUtil;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/droidhang/crosspromotion/util/RandUtil;->_random:Ljava/util/Random;

    .line 17
    sget-object v0, Lcom/droidhang/crosspromotion/util/RandUtil;->_random:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 19
    :cond_0
    sget-object v0, Lcom/droidhang/crosspromotion/util/RandUtil;->_random:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public random(Ljava/util/List;Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/droidhang/crosspromotion/util/RandUtil;, "Lcom/droidhang/crosspromotion/util/RandUtil<TT;>;"
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "weightFunc":Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight;, "Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight<TT;>;"
    sget-boolean v8, Lcom/droidhang/crosspromotion/util/RandUtil;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 26
    .local v5, "size":I
    new-array v7, v5, [I

    .line 27
    .local v7, "weights":[I
    const/4 v6, 0x0

    .line 28
    .local v6, "sum":I
    const/4 v1, 0x0

    .line 29
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 30
    .local v4, "s":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4}, Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight;->getWeight(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v6, v8

    .line 31
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput v6, v7, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 33
    .end local v4    # "s":Ljava/lang/Object;, "TT;"
    :cond_1
    sget-boolean v8, Lcom/droidhang/crosspromotion/util/RandUtil;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-nez v6, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 35
    :cond_2
    invoke-static {}, Lcom/droidhang/crosspromotion/util/RandUtil;->getRandom()Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 36
    .local v3, "ret":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_4

    .line 37
    aget v8, v7, v1

    if-ge v3, v8, :cond_3

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 42
    :goto_2
    return-object v8

    .line 36
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_4
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2
.end method
