.class public Lcom/sponsorpay/utils/SPIdValidator;
.super Ljava/lang/Object;
.source "SPIdValidator.java"


# static fields
.field private static PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "^[A-Z0-9_]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/utils/SPIdValidator;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sponsorpay/utils/SPIdException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Lcom/sponsorpay/utils/SPIdException;

    const-string v2, "An ID cannot be null or empty."

    invoke-direct {v1, v2}, Lcom/sponsorpay/utils/SPIdException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_0
    sget-object v1, Lcom/sponsorpay/utils/SPIdValidator;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 22
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Lcom/sponsorpay/utils/SPIdException;

    const-string v2, "An ID can only contain uppercase letters, numbers and the _ underscore symbol."

    invoke-direct {v1, v2}, Lcom/sponsorpay/utils/SPIdException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_1
    return-void
.end method
