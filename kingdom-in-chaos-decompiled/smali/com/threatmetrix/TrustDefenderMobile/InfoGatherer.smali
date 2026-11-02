.class Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;
.super Ljava/lang/Object;
.source "InfoGatherer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static checkURLs(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v6, "foundURLs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 41
    .local v11, "not_matched":I
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v6

    .line 44
    :cond_1
    sget-object v19, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->checkURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "nativeURLs":[Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 47
    .local v3, "buildTags":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 49
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 51
    .local v12, "p":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v18

    if-eqz v18, :cond_3

    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 53
    :cond_3
    const/4 v5, 0x0

    .line 54
    .local v5, "foundMatch":Z
    const/16 v16, 0x0

    .line 57
    .local v16, "url":Ljava/net/URI;
    :try_start_0
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16    # "url":Ljava/net/URI;
    .local v17, "url":Ljava/net/URI;
    move-object/from16 v16, v17

    .line 63
    .end local v17    # "url":Ljava/net/URI;
    .restart local v16    # "url":Ljava/net/URI;
    :goto_2
    if-eqz v16, :cond_2

    .line 64
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v18

    const-string v19, "file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 68
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 70
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    .line 101
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    :goto_3
    if-eqz v5, :cond_7

    .line 103
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :catch_0
    move-exception v18

    sget-object v18, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v18

    const-string v19, "tags"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 76
    if-eqz v3, :cond_4

    .line 78
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, "tagToCheck":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    .line 80
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_3

    .line 83
    .end local v14    # "tagToCheck":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v18

    const-string v19, "pkg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 85
    if-eqz v13, :cond_4

    .line 87
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "uri":Ljava/lang/String;
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    const/4 v5, 0x1

    goto :goto_3

    .line 107
    .end local v15    # "uri":Ljava/lang/String;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 109
    goto/16 :goto_1

    .line 111
    .end local v5    # "foundMatch":Z
    .end local v12    # "p":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URI;
    :cond_8
    sget-object v18, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "matched "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    if-eqz v10, :cond_9

    array-length v0, v10

    move/from16 v18, v0

    if-lez v18, :cond_9

    .line 115
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v10

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v8, :cond_9

    aget-object v9, v2, v7

    .line 117
    .local v9, "n":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "z"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 121
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "n":Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 122
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    sget-object v18, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 123
    sget-object v18, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "found "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->ListToSeperatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .restart local v5    # "foundMatch":Z
    .local v7, "i$":Ljava/util/Iterator;
    .restart local v12    # "p":Ljava/lang/String;
    .restart local v15    # "uri":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URI;
    :catch_1
    move-exception v18

    goto/16 :goto_3
.end method

.method private static getCPUInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Processor"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "BogoMips"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Hardware"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Serial"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 213
    const-string v2, "/proc/cpuinfo"

    const-string v3, ":"

    invoke-static {v2, v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCPUInfo returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-object v0
.end method

.method static getDeviceFingerprint(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "m_context"    # Landroid/content/Context;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v4, "fingerprint":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    .line 393
    :goto_0
    return-object v10

    .line 355
    :cond_0
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 356
    .local v5, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "Unknown"

    .line 358
    .local v2, "carrierName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 361
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 364
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 371
    .local v6, "path":Ljava/io/File;
    new-instance v7, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;-><init>(Ljava/lang/String;)V

    .line 372
    .local v7, "stat":Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;
    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getBlockSize()J

    move-result-wide v0

    .line 373
    .local v0, "blockSize":J
    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getBlockCount()J

    move-result-wide v8

    .line 374
    .local v8, "totalBlocks":J
    long-to-float v10, v8

    long-to-float v11, v0

    mul-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 377
    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;

    const-string v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;-><init>(Landroid/view/Display;)V

    .line 378
    .local v3, "display":Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getWidth()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/DisplayWrapper;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    .line 382
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Processor"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "BogoMips"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "Hardware"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "Serial"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/cpuinfo"

    const-string v12, ":"

    invoke-static {v11, v10, v12}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getCPUInfo returned: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    .line 386
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "MemTotal"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/meminfo"

    const-string v12, ":"

    invoke-static {v11, v10, v12}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getMemInfo returned: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDeviceFingerprint returned: hash("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method static getDeviceState()Ljava/lang/String;
    .locals 15

    .prologue
    const/high16 v14, 0x44800000    # 1024.0f

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v9, "state":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 230
    .local v6, "path":Ljava/io/File;
    new-instance v8, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;-><init>(Ljava/lang/String;)V

    .line 231
    .local v8, "stat":Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;
    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getBlockSize()J

    move-result-wide v2

    .line 232
    .local v2, "blockSize":J
    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getAvailableBlocks()J

    move-result-wide v0

    .line 233
    .local v0, "availableBlocks":J
    const/high16 v7, 0x3f800000    # 1.0f

    .line 234
    .local v7, "size":F
    mul-long v10, v0, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 236
    long-to-float v10, v0

    long-to-float v11, v2

    mul-float/2addr v10, v11

    div-float/2addr v10, v14

    div-float/2addr v10, v14

    div-float v7, v10, v14

    .line 238
    :cond_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 239
    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v4, v10, v12

    .line 243
    .local v4, "bootTime":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDeviceState: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method static getFontHashAndCount(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 12
    .param p0, "fontCount"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "fontHash":Ljava/lang/String;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    const-string v7, "/system/fonts"

    invoke-virtual {v5, v7}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->getFontList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 143
    .local v3, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 145
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fontHash":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 146
    .restart local v1    # "fontHash":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    :goto_0
    return-object v1

    .line 151
    .end local v3    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/File;

    const-string v7, "/system/fonts/"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, ".ttf"

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v10, v8, v5

    if-eqz v10, :cond_2

    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v11, v6, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    .restart local v3    # "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v2, "fontString":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    .end local v0    # "f":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFontList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/fonts/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v8, "temp":Ljava/io/File;
    const-string v4, ".ttf"

    .line 176
    .local v4, "fontSuffix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "files":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 189
    :cond_0
    return-object v3

    .line 179
    :cond_1
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 182
    .local v2, "fontName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v4, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 270
    .local v0, "br":Ljava/io/BufferedReader;
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 274
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "raw":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 278
    const-string v7, ""

    .line 279
    .local v7, "paramValue":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 282
    invoke-static {v9, p2}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->splitNonRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 283
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 284
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "paramName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 287
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v12, :cond_1

    .line 291
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 311
    .end local v6    # "paramName":Ljava/lang/String;
    .end local v8    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 314
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    .end local v7    # "paramValue":Ljava/lang/String;
    .end local v9    # "raw":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    if-eqz v0, :cond_3

    .line 329
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 338
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 296
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "paramValue":Ljava/lang/String;
    .restart local v9    # "raw":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v2, "build":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 300
    .local v5, "k":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 303
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_6
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 325
    .end local v2    # "build":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "k":Ljava/lang/String;
    .end local v7    # "paramValue":Ljava/lang/String;
    .end local v9    # "raw":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v0, :cond_7

    .line 329
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 334
    :cond_7
    :goto_6
    throw v10

    .line 308
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "build":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "paramValue":Ljava/lang/String;
    .restart local v9    # "raw":Ljava/lang/String;
    :cond_8
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 325
    .end local v2    # "build":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "paramValue":Ljava/lang/String;
    :cond_9
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    .line 334
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 333
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    move-object v0, v1

    .line 334
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 333
    .end local v9    # "raw":Ljava/lang/String;
    :catch_2
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    goto :goto_6

    .line 325
    :catchall_1
    move-exception v10

    goto :goto_5

    .line 321
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method private static getMemInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MemTotal"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 197
    const-string v2, "/proc/meminfo"

    const-string v3, ":"

    invoke-static {v2, v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMemInfo returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    return-object v0
.end method

.method static getTimeZoneInfo(Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;)Z
    .locals 3
    .param p0, "tzInfo"    # Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;

    .prologue
    const v2, 0xea60

    .line 549
    if-nez p0, :cond_0

    .line 550
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tzInfo cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 554
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->gmtOffset:I

    .line 557
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->dstDiff:I

    .line 560
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeZoneInfo: dstDiff="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->dstDiff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gmfOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer$TZInfo;->gmtOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    const/4 v1, 0x1

    .line 565
    :goto_0
    return v1

    .line 564
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    const-string v2, "getTimeZoneInfo: FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getURLs(Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v6, "found":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 414
    :cond_0
    const/16 v20, 0x0

    .line 541
    :goto_0
    return-object v20

    .line 416
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/net/URI;

    .line 418
    .local v18, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v20, Ljava/lang/InterruptedException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/InterruptedException;-><init>()V

    throw v20

    .line 420
    :cond_3
    if-eqz v18, :cond_2

    .line 421
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "file"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 425
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v16

    .line 428
    .local v16, "query":Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 431
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 432
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v20, "true"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v20, "false"

    goto :goto_2

    .line 437
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 440
    invoke-static/range {v16 .. v16}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->splitQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 441
    .local v12, "kvs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "grep"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 442
    .local v9, "isGrep":Z
    if-nez v9, :cond_8

    const-string v20, "keys"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 445
    :cond_8
    const-string v20, "sep"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 446
    .local v17, "sep":Ljava/lang/String;
    if-nez v9, :cond_a

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 447
    :cond_9
    const-string v17, ":"

    .line 448
    :cond_a
    if-eqz v9, :cond_c

    const-string v20, "grep"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v11, v20

    .line 449
    .local v11, "keys":Ljava/lang/String;
    :goto_3
    if-eqz v11, :cond_18

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_18

    .line 450
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->splitNonRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 453
    .local v10, "k":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v10, v1}, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->getInfoFromFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "info":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 458
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 448
    .end local v8    # "info":Ljava/lang/String;
    .end local v10    # "k":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "keys":Ljava/lang/String;
    :cond_c
    const-string v20, "keys"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v11, v20

    goto :goto_3

    .line 465
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "isGrep":Z
    .end local v12    # "kvs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "query":Ljava/lang/String;
    .end local v17    # "sep":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "intro"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 470
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "className":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 473
    .local v14, "methodOrFieldName":Ljava/lang/String;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 475
    :cond_e
    sget-object v20, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 479
    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 481
    :cond_10
    sget-object v20, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 485
    :cond_11
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 487
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 490
    :cond_12
    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 491
    .local v2, "c":Ljava/lang/Class;
    if-nez v2, :cond_13

    .line 493
    sget-object v20, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "getURLs: failed to find class: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "className":Ljava/lang/String;
    .end local v14    # "methodOrFieldName":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_1

    .line 497
    .restart local v2    # "c":Ljava/lang/Class;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v14    # "methodOrFieldName":Ljava/lang/String;
    :cond_13
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v2, v14, v0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 498
    .local v13, "m":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_15

    .line 500
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v2, v13, v0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 501
    .local v15, "o":Ljava/lang/Object;
    if-eqz v15, :cond_2

    .line 503
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 505
    .local v19, "v":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 507
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_14

    .line 508
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 516
    .end local v15    # "o":Ljava/lang/Object;
    .end local v19    # "v":Ljava/lang/String;
    :cond_15
    invoke-static {v2, v14}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 517
    .local v4, "f":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_17

    .line 519
    invoke-static {v2, v4}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->getValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    .line 520
    .restart local v15    # "o":Ljava/lang/Object;
    if-eqz v15, :cond_2

    instance-of v0, v15, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_16

    .line 523
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_16
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    check-cast v15, Ljava/lang/String;

    .end local v15    # "o":Ljava/lang/Object;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 529
    :cond_17
    sget-object v20, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "getURLs: failed to find method or field: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 538
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v13    # "m":Ljava/lang/reflect/Method;
    .end local v14    # "methodOrFieldName":Ljava/lang/String;
    .end local v18    # "uri":Ljava/net/URI;
    :cond_18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_19

    .line 539
    sget-object v20, Lcom/threatmetrix/TrustDefenderMobile/InfoGatherer;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "found "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0
.end method
