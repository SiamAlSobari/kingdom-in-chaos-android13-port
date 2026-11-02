.class public interface abstract Lcom/wwcd/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# virtual methods
.method public abstract error(Ljava/lang/Class;Ljava/lang/Throwable;)V
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

.method public varargs abstract error(Ljava/lang/Class;[Ljava/lang/Object;)V
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

.method public abstract info(Ljava/lang/Class;Ljava/lang/Throwable;)V
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

.method public varargs abstract info(Ljava/lang/Class;[Ljava/lang/Object;)V
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
