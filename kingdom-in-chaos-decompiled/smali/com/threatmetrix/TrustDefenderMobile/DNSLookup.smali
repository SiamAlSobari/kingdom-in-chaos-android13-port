.class public Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;
.super Ljava/lang/Object;
.source "DNSLookup.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private domain:Ljava/lang/String;

.field private inetAddr:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->domain:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->inetAddr:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->TAG:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->domain:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 25
    .local v0, "addr":Ljava/net/InetAddress;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->TAG:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->set(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized set(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inetAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/DNSLookup;->inetAddr:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
