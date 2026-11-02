.class final enum Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
.super Ljava/lang/Enum;
.source "NativeGatherer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

.field public static final enum INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    aput-object v1, v0, v2

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;-><init>(Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    .line 78
    return-void
.end method

.method private findRunningProcs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->findRunningProcs()[Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-object v0
.end method


# virtual methods
.method public final checkURLs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_1

    const-string v0, " available "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageTotalLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageLimit:I

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finding more packages "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packagesFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageTotalLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageTotalLimit:I

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v3, v3, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageLimit:I

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_systemPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->findPackages(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_packageTotalLimit:I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->checkURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0

    .line 87
    :cond_1
    const-string v0, "not available "

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getFontList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "fontPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->getFontList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 157
    .end local v0    # "fonts":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 155
    .restart local v0    # "fonts":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 157
    .end local v0    # "fonts":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getRandomString(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->hashFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAvailable()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    return v0
.end method

.method public final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "blob"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "blob"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->m_available:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->m_gatherer:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1, p2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
