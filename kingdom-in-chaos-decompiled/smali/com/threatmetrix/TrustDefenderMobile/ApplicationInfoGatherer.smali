.class Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;
.super Ljava/lang/Object;
.source "ApplicationInfoGatherer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInstalledPackages(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 91
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 97
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->getHashForPackage(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 100
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static checkRunningPackages(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    :try_start_0
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v9, 0x7fffffff

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 109
    .local v8, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 111
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    .local v7, "recentTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "cn":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Application executed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\t\t ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 116
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 120
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 121
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 123
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v9}, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->getHashForPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 128
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    :try_start_2
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 113
    .end local v2    # "cn":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v2, "none"
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 133
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "recentTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "No perms: "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_2
    return-void
.end method

.method static checkThisPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 146
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 149
    .local v1, "sourceDir":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sourceDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v1}, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->getHashForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .end local v1    # "sourceDir":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getHashForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 23
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v9}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 25
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v9, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->hashFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    :goto_0
    return-object v5

    .line 28
    :cond_0
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    .line 32
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 43
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 51
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 53
    .local v5, "md5String":Ljava/lang/String;
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 57
    .local v1, "buffer":[B
    :goto_1
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-lez v8, :cond_1

    .line 59
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 67
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "Unable to process file for MD5"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 83
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 34
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "md5String":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 36
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "Exception while getting digest"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :catch_2
    move-exception v3

    .line 47
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "Exception while getting FileInputStream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "md5String":Ljava/lang/String;
    .restart local v8    # "read":I
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 62
    .local v6, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "output":Ljava/lang/String;
    const-string v9, "%32s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    const/16 v11, 0x30

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 75
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 77
    :catch_3
    move-exception v3

    .line 79
    .local v3, "e":Ljava/io/IOException;
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 77
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "md5sum":[B
    .end local v7    # "output":Ljava/lang/String;
    .end local v8    # "read":I
    :catch_4
    move-exception v3

    .line 79
    sget-object v9, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 73
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 75
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 80
    :goto_3
    throw v9

    .line 77
    :catch_5
    move-exception v3

    .line 79
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/ApplicationInfoGatherer;->TAG:Ljava/lang/String;

    const-string v11, "Exception on closing MD5 input stream"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
