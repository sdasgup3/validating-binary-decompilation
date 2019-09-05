void leaf() {
  __asm__("sarxq %rdx, -4(%rbp), %rbx");
  }

void main() {
  leaf();
}