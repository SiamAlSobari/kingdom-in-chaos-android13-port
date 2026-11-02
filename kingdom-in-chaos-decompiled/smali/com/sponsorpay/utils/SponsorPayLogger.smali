.class public Lcom/sponsorpay/utils/SponsorPayLogger;
.super Ljava/lang/Object;
.source "SponsorPayLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/utils/SponsorPayLogger$Level;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger; = null

.field private static logging:Z = false

.field private static final prefix:Ljava/lang/String; = "[SP] "


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/utils/SPLoggerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    .line 97
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger;

    invoke-direct {v0}, Lcom/sponsorpay/utils/SponsorPayLogger;-><init>()V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/SponsorPayLogger;->listeners:Ljava/util/Set;

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/utils/SponsorPayLogger;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sponsorpay/utils/SponsorPayLogger;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public static addLoggerListener(Lcom/sponsorpay/utils/SPLoggerListener;)Z
    .locals 1
    .param p0, "newListener"    # Lcom/sponsorpay/utils/SPLoggerListener;

    .prologue
    .line 121
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    iget-object v0, v0, Lcom/sponsorpay/utils/SponsorPayLogger;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->DEBUG:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ERROR:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 50
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ERROR:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    :cond_0
    return-void
.end method

.method public static enableLogging(Z)Z
    .locals 1
    .param p0, "shouldLog"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    .line 39
    sget-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->INFO:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static isLogging()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    return v0
.end method

.method public static removeLoggerListener(Lcom/sponsorpay/utils/SPLoggerListener;)Z
    .locals 1
    .param p0, "listener"    # Lcom/sponsorpay/utils/SPLoggerListener;

    .prologue
    .line 125
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    iget-object v0, v0, Lcom/sponsorpay/utils/SponsorPayLogger;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static shouldLog()Z
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    if-nez v0, :cond_0

    const-string v0, "SponsorPay"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toggleLogging()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    .line 30
    sget-boolean v0, Lcom/sponsorpay/utils/SponsorPayLogger;->logging:Z

    return v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->VERBOSE:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->WARNING:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 85
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SP] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayLogger;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->WARNING:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sponsorpay/utils/SponsorPayLogger;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "level"    # Lcom/sponsorpay/utils/SponsorPayLogger$Level;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sponsorpay/utils/SponsorPayLogger;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/utils/SponsorPayLogger$1;-><init>(Lcom/sponsorpay/utils/SponsorPayLogger;Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 118
    :cond_0
    return-void
.end method
