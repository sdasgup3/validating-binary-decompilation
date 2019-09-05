void leaf() {
  __asm__("cmovoq %rcx, %rbx");
  }

void main() {
  leaf();
}