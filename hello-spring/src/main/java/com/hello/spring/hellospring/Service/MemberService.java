package com.hello.spring.hellospring.Service;


import com.hello.spring.hellospring.domain.Member;
import com.hello.spring.hellospring.repository.MemeberRepository;
import com.hello.spring.hellospring.repository.MemoryMemberRepository;

import java.util.List;
import java.util.Optional;

public class MemberService {

    private final MemeberRepository memberRepository;

    public MemberService(MemeberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    /**
     * 회원가입
     */
    public Long join(Member member) {
        // 같은 이름이 있는 중복 회원은 X
        // 자동 만들기 ctrl + alt + v
        // Optional<Member> result 생략 가능
        validateDuplicateMember(member);

        memberRepository.save(member);
        return member.getId();
    }

    // 자동 메소드 만들기 ctrl + alt + m
    private void validateDuplicateMember(Member member) {
        memberRepository.findByName(member.getName())
            .ifPresent(m -> {
            throw new IllegalStateException("이미 존재하는 회원입니다.");
        });
    }

    /**
     * 전체 회원 조회
     */
    public List<Member> findMembers() {
        return memberRepository.findAll();
    }

    public Optional<Member> findOne(Long memberId) {
        return memberRepository.findById(memberId);
    }
}
