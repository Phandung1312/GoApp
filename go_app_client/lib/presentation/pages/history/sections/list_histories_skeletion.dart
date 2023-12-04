import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ListHistoriesSkeleton extends StatelessWidget {
  const ListHistoriesSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: SkeletonItem(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SkeletonLine(
                    style: SkeletonLineStyle(
                      height: 30,
                      width: 30
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            randomLength: true,
                            height: 10,
                            borderRadius: BorderRadius.circular(8),
                            minLength: 40,
                            maxLength: 100),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                          randomLength: false,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          width: MediaQuery.of(context).size.width / 1.4,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 8,
                          maxLength: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                          randomLength: false,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          width: MediaQuery.of(context).size.width / 5,
                  
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            )));
  }
}
