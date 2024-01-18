import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class StatisticsSkeleton extends StatelessWidget {
  const StatisticsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SkeletonItem(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  minLength: MediaQuery.of(context).size.width / 8,
                  maxLength: MediaQuery.of(context).size.width / 4,
                ),
              ),
              const SkeletonLine(
                style: SkeletonLineStyle(
                  randomLength: false,
                  height: 10,
                  width: 30
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          
        ],
      )),
    );
  }
}
