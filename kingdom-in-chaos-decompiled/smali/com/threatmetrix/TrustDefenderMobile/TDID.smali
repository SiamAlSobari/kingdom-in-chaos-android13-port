.class Lcom/threatmetrix/TrustDefenderMobile/TDID;
.super Ljava/lang/Object;
.source "TDID.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TDID;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 113
    move-object v0, p0

    .line 114
    .local v0, "out":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 129
    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 44
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .line 49
    :cond_1
    return-object v0
.end method

.method static getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "androidID"    # Ljava/lang/String;
    .param p1, "useAltIDScheme"    # Z

    .prologue
    .line 146
    .line 147
    move-object v0, p0

    .local v0, "cookie":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 149
    if-eqz p1, :cond_0

    .line 151
    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "using ANDROID_ID for TPC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getFlashCookie$26396263(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "androidID"    # Ljava/lang/String;
    .param p1, "genID"    # Ljava/lang/String;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "useAltIDScheme"    # Z

    .prologue
    .line 161
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "000000000000000"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "flashCookie":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_0

    .line 165
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 161
    .end local v0    # "flashCookie":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getHTML5Cookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "genID"    # Ljava/lang/String;
    .param p1, "useAltIDScheme"    # Z

    .prologue
    .line 134
    move-object v0, p0

    .line 136
    .local v0, "HTML5Cookie":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "using generated ID for LSC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDID;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "imei":Ljava/lang/String;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imei: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 63
    .end local v0    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, ""

    .restart local v0    # "imei":Ljava/lang/String;
    goto :goto_0
.end method

.method static getPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v4, "ThreatMetrixMobileSDK"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 23
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "ThreatMetrixMobileSDK"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "genID":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 27
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TDID;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 29
    .local v3, "uuid":Ljava/util/UUID;
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ThreatMetrixMobileSDK"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "uuid":Ljava/util/UUID;
    :cond_0
    return-object v1
.end method

.method private static getSerial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "androidID"    # Ljava/lang/String;
    .param p1, "genID"    # Ljava/lang/String;
    .param p2, "imei"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 91
    .local v0, "serial":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "000000000000000"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_1
    return-object v0

    .line 85
    .end local v0    # "serial":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    .line 95
    .restart local v0    # "serial":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static isDodgySerial()Z
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "dodgySerial":Z
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 74
    .local v1, "serial":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1234567890ABCDEF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 79
    :cond_1
    return v0
.end method
