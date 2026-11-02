.class public Lcom/wwcd/logger/AndroidLogger;
.super Lcom/wwcd/logger/AbstractLogger;
.source "AndroidLogger.java"


# static fields
.field public static final SUPER_TAG:Ljava/lang/String; = "super"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/wwcd/logger/AbstractLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public errorImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "super"

    invoke-virtual {p0, p1}, Lcom/wwcd/logger/AndroidLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    return-void
.end method

.method public varargs errorImpl(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p2, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "super"

    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AndroidLogger;->getFormattedMsg(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public infoImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "super"

    invoke-virtual {p0, p1}, Lcom/wwcd/logger/AndroidLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    return-void
.end method

.method public varargs infoImpl(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p2, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "super"

    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AndroidLogger;->getFormattedMsg(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method
