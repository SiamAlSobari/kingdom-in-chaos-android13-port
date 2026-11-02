.class public Lcom/sponsorpay/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final notNullNorEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final nullOrEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 14
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
