.class public Lcom/wwcd/logger/SystemOutLogger;
.super Lcom/wwcd/logger/AbstractLogger;
.source "SystemOutLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
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
    .line 9
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/wwcd/logger/SystemOutLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
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
    .line 5
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/SystemOutLogger;->getFormattedMsg(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
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
    .line 18
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/wwcd/logger/SystemOutLogger;->getTagString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 20
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
    .line 14
    .local p1, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, p2}, Lcom/wwcd/logger/SystemOutLogger;->getFormattedMsg(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    return-void
.end method
