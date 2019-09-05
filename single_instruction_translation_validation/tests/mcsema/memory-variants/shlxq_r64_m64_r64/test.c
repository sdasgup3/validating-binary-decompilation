void leaf() {
  __asm__("shlxq %rdx, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}