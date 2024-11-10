part of mbc_common;

class SkeletonItemLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSkeletonAnimation();
  }

  Widget buildSkeletonAnimation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 16,
        ),
        SkeletonAnimation(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                      width: double.infinity,
                      height: 20,
                      decoration: BoxDecoration(
                        color: ColorConstants.defaultTextColor.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 16, bottom: 8, top: 8),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                width: 75,
                                decoration: BoxDecoration(
                                  color: ColorConstants.defaultTextColor
                                      .withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: Container(
                                    width: double.infinity,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: ColorConstants.defaultTextColor
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: Container(
                                    width: double.infinity,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: ColorConstants.defaultTextColor
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: Container(
                                    width: double.infinity,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: ColorConstants.defaultTextColor
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
