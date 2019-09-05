void leaf() {
  __asm__("cvttss2siq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}