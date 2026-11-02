.class public Lcom/wwcd/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field public static logger:Lcom/wwcd/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/wwcd/logger/SystemOutLogger;

    invoke-direct {v0}, Lcom/wwcd/logger/SystemOutLogger;-><init>()V

    sput-object v0, Lcom/wwcd/logger/LoggerFactory;->logger:Lcom/wwcd/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogger(Lcom/wwcd/logger/Logger;)V
    .locals 0
    .param p0, "newLogger"    # Lcom/wwcd/logger/Logger;

    .prologue
    .line 7
    sput-object p0, Lcom/wwcd/logger/LoggerFactory;->logger:Lcom/wwcd/logger/Logger;

    .line 8
    return-void
.end method
