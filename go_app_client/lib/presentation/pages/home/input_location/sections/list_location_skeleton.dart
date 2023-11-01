import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ListLocationSkeleton extends StatelessWidget {
  const ListLocationSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: SkeletonItem(
                  child: Column(
                    children: [
                      SkeletonLine(
                        style: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 8,
                          maxLength: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      const SizedBox(
                        height:  10,
                      ),
                        SkeletonLine(
                        style: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength:MediaQuery.of(context).size.width / 4 ,
                          maxLength: MediaQuery.of(context).size.width / 2
                        ),
                      )
                    ],
                  )),
              ),
            ));
  }
}
