void leaf() {
  __asm__("shlxq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}