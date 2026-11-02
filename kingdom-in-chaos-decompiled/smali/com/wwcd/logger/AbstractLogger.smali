.class public abstract Lcom/wwcd/logger/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"

# interfaces
.implements Lcom/wwcd/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 1
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
    .line 12
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/wwcd/logger/AbstractLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AbstractLogger;->errorImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
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
    .line 6
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/wwcd/logger/AbstractLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AbstractLogger;->errorImpl(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void
.end method

.method protected abstract errorImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method protected varargs abstract errorImpl(Ljava/lang/Class;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public varargs getFormattedMsg(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p2, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v5, p2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/wwcd/logger/AbstractLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    :goto_0
    return-object v5

    .line 53
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/wwcd/logger/AbstractLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 56
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getTagString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 1
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
    .line 24
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/wwcd/logger/AbstractLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AbstractLogger;->infoImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 27
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
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
    invoke-virtual {p0}, Lcom/wwcd/logger/AbstractLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/AbstractLogger;->infoImpl(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected abstract infoImpl(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method protected varargs abstract infoImpl(Ljava/lang/Class;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
