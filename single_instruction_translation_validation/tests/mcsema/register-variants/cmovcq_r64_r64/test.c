void leaf() {
  __asm__("cmovcq %rcx, %rbx");
  }

void main() {
  leaf();
}