.class Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;
.super Ljava/lang/Object;
.source "NativeGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeGathererHelper"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field m_available:Z

.field m_packageLimit:I

.field m_packageTotalLimit:I

.field m_packagesFound:I

.field m_systemPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;)V
    .locals 4

    .prologue
    .line 22
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->this$0:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v2, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->TAG:Ljava/lang/String;

    .line 16
    const/4 v2, 0x0

    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I

    .line 17
    const/16 v2, 0xc8

    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageLimit:I

    .line 18
    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageLimit:I

    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageTotalLimit:I

    .line 19
    const-string v2, "/system/app"

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_systemPath:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 26
    .local v0, "available":Z
    :try_start_0
    const-string v2, "trustdefender-jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileVersion;->numeric:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->init(I)Z

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->TAG:Ljava/lang/String;

    .line 31
    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageLimit:I

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_systemPath:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->findPackages(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    .line 44
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NativeGatherer() complete, found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    return-void

    .line 36
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    .line 40
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->TAG:Ljava/lang/String;

    const-string v3, "Native code:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method native checkURLs([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->finit()V

    .line 68
    return-void
.end method

.method native findPackages(ILjava/lang/String;)I
.end method

.method native findRunningProcs()[Ljava/lang/String;
.end method

.method native finit()V
.end method

.method native getFontList(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method native getRandomString(I)Ljava/lang/String;
.end method

.method native hashFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native init(I)Z
.end method

.method native md5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native sha1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native urlEncode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
